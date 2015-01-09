package com.xebia.xifire.service.persistence;

import com.liferay.portal.kernel.dao.orm.BaseActionableDynamicQuery;
import com.liferay.portal.kernel.exception.SystemException;

import com.xebia.xifire.model.Salary;
import com.xebia.xifire.service.SalaryLocalServiceUtil;

/**
 * @author Brian Wing Shun Chan
 * @generated
 */
public abstract class SalaryActionableDynamicQuery
    extends BaseActionableDynamicQuery {
    public SalaryActionableDynamicQuery() throws SystemException {
        setBaseLocalService(SalaryLocalServiceUtil.getService());
        setClass(Salary.class);

        setClassLoader(com.xebia.xifire.service.ClpSerializer.class.getClassLoader());

        setPrimaryKeyPropertyName("id");
    }
}
