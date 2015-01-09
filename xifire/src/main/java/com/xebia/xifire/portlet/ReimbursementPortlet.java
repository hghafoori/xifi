package com.xebia.xifire.portlet;

import java.io.IOException;
import java.text.SimpleDateFormat;

import javax.portlet.ActionRequest;
import javax.portlet.ActionResponse;
import javax.portlet.PortletException;
import javax.portlet.PortletPreferences;
import javax.portlet.ProcessAction;

import com.liferay.util.bridges.mvc.MVCPortlet;

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
	          Date billDate = new SimpleDateFormat("MM/dd/yyyy");
	          
	          ReimbursementItemImpl reimbursementItemImpl = new ReimbursementItemImpl(); 
	          
	          //Call service and submit 
			
		} catch (Exception e) {
	          actionResponse.setRenderParameter("status","Error While Submiting");
		}
		super.processAction(actionRequest, actionResponse);

	}
}

