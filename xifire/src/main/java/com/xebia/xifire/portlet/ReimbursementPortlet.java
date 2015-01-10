package com.xebia.xifire.portlet;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.portlet.ActionRequest;
import javax.portlet.ActionResponse;
import javax.portlet.PortletException;
import javax.portlet.ProcessAction;

import com.liferay.counter.service.CounterLocalServiceUtil;
import com.liferay.portal.kernel.util.ParamUtil;
import com.liferay.portal.theme.ThemeDisplay;
import com.liferay.portal.util.WebKeys;
import com.liferay.util.bridges.mvc.MVCPortlet;
import com.xebia.xifire.model.impl.ReimbursementItemImpl;
import com.xebia.xifire.model.impl.UserReimbursementImpl;
import com.xebia.xifire.service.ReimbursementItemLocalServiceUtil;
import com.xebia.xifire.service.UserReimbursementLocalServiceUtil;

public class ReimbursementPortlet extends MVCPortlet {
	
	
	@Override
	@ProcessAction(name = "submit")
	public void processAction(ActionRequest actionRequest,
			ActionResponse actionResponse) throws IOException, PortletException {
		
		try {
			  String category = ParamUtil.getString(actionRequest,"category");
			  String billDateStr = ParamUtil.getString(actionRequest,"billDate");
			  String billAmount = ParamUtil.getString(actionRequest,"billAmount");
	          actionResponse.setRenderParameter("status","Submited Successfully");
	          Date billDate = new SimpleDateFormat("MM/dd/yyyy").parse(billDateStr);
	          
	          ReimbursementItemImpl reimbursementItem = new ReimbursementItemImpl();
	          reimbursementItem.setBillAmount(Integer.parseInt(billAmount));
	          reimbursementItem.setBillCategory(category);
	          reimbursementItem.setBillDate(billDate);
	          reimbursementItem.setId(CounterLocalServiceUtil.getCounter("com.liferay.counter.model.Counter").getCurrentId());
	          
	          ReimbursementItemLocalServiceUtil.addReimbursementItem(reimbursementItem);
	          
	          UserReimbursementImpl userReimbursement = new UserReimbursementImpl();
	          
	          userReimbursement.setCreateDate(new Date());
	          userReimbursement.setId(CounterLocalServiceUtil.getCounter("com.liferay.counter.model.Counter").getCurrentId());	          
	          
	          ThemeDisplay themeDisplay = (ThemeDisplay) actionRequest.getAttribute(WebKeys.THEME_DISPLAY);
	          long userId = themeDisplay.getUserId();
	          userReimbursement.setUserId(userId);
	          
	          UserReimbursementLocalServiceUtil.addUserReimbursement(userReimbursement);
	          //Call service and submit 
			
		} catch (Exception e) {
	          actionResponse.setRenderParameter("status","Error While Submiting");
		}
		super.processAction(actionRequest, actionResponse);

	}
}

