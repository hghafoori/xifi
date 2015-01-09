package com.xebia.xifire.service.persistence;

import com.liferay.portal.kernel.dao.orm.BaseActionableDynamicQuery;
import com.liferay.portal.kernel.exception.SystemException;

import com.xebia.xifire.model.ReimbursementItem;
import com.xebia.xifire.service.ReimbursementItemLocalServiceUtil;

/**
 * @author Brian Wing Shun Chan
 * @generated
 */
public abstract class ReimbursementItemActionableDynamicQuery
    extends BaseActionableDynamicQuery {
    public ReimbursementItemActionableDynamicQuery() throws SystemException {
        setBaseLocalService(ReimbursementItemLocalServiceUtil.getService());
        setClass(ReimbursementItem.class);

        setClassLoader(com.xebia.xifire.service.ClpSerializer.class.getClassLoader());

        setPrimaryKeyPropertyName("id");
    }
}
