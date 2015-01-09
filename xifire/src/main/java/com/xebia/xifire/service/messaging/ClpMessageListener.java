package com.xebia.xifire.service.messaging;

import com.liferay.portal.kernel.messaging.BaseMessageListener;
import com.liferay.portal.kernel.messaging.Message;

import com.xebia.xifire.service.ClpSerializer;
import com.xebia.xifire.service.EmployeeDetailLocalServiceUtil;
import com.xebia.xifire.service.ReimbursementItemLocalServiceUtil;
import com.xebia.xifire.service.SalaryLocalServiceUtil;
import com.xebia.xifire.service.UserReimbursementLocalServiceUtil;


public class ClpMessageListener extends BaseMessageListener {
    public static String getServletContextName() {
        return ClpSerializer.getServletContextName();
    }

    @Override
    protected void doReceive(Message message) throws Exception {
        String command = message.getString("command");
        String servletContextName = message.getString("servletContextName");

        if (command.equals("undeploy") &&
                servletContextName.equals(getServletContextName())) {
            EmployeeDetailLocalServiceUtil.clearService();

            ReimbursementItemLocalServiceUtil.clearService();

            SalaryLocalServiceUtil.clearService();

            UserReimbursementLocalServiceUtil.clearService();
        }
    }
}
