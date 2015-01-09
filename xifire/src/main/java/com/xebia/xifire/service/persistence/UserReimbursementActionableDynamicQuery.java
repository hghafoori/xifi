package com.xebia.xifire.service.persistence;

import com.liferay.portal.kernel.dao.orm.BaseActionableDynamicQuery;
import com.liferay.portal.kernel.exception.SystemException;

import com.xebia.xifire.model.UserReimbursement;
import com.xebia.xifire.service.UserReimbursementLocalServiceUtil;

/**
 * @author Brian Wing Shun Chan
 * @generated
 */
public abstract class UserReimbursementActionableDynamicQuery
    extends BaseActionableDynamicQuery {
    public UserReimbursementActionableDynamicQuery() throws SystemException {
        setBaseLocalService(UserReimbursementLocalServiceUtil.getService());
        setClass(UserReimbursement.class);

        setClassLoader(com.xebia.xifire.service.ClpSerializer.class.getClassLoader());

        setPrimaryKeyPropertyName("id");
    }
}
