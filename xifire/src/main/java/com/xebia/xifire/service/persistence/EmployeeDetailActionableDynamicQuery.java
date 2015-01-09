package com.xebia.xifire.service.persistence;

import com.liferay.portal.kernel.dao.orm.BaseActionableDynamicQuery;
import com.liferay.portal.kernel.exception.SystemException;

import com.xebia.xifire.model.EmployeeDetail;
import com.xebia.xifire.service.EmployeeDetailLocalServiceUtil;

/**
 * @author Brian Wing Shun Chan
 * @generated
 */
public abstract class EmployeeDetailActionableDynamicQuery
    extends BaseActionableDynamicQuery {
    public EmployeeDetailActionableDynamicQuery() throws SystemException {
        setBaseLocalService(EmployeeDetailLocalServiceUtil.getService());
        setClass(EmployeeDetail.class);

        setClassLoader(com.xebia.xifire.service.ClpSerializer.class.getClassLoader());

        setPrimaryKeyPropertyName("id");
    }
}
