package com.xebia.xifire.service;

import com.liferay.portal.service.ServiceWrapper;

/**
 * Provides a wrapper for {@link ReimbursementItemLocalService}.
 *
 * @author Brian Wing Shun Chan
 * @see ReimbursementItemLocalService
 * @generated
 */
public class ReimbursementItemLocalServiceWrapper
    implements ReimbursementItemLocalService,
        ServiceWrapper<ReimbursementItemLocalService> {
    private ReimbursementItemLocalService _reimbursementItemLocalService;

    public ReimbursementItemLocalServiceWrapper(
        ReimbursementItemLocalService reimbursementItemLocalService) {
        _reimbursementItemLocalService = reimbursementItemLocalService;
    }

    /**
    * Adds the reimbursement item to the database. Also notifies the appropriate model listeners.
    *
    * @param reimbursementItem the reimbursement item
    * @return the reimbursement item that was added
    * @throws SystemException if a system exception occurred
    */
    @Override
    public com.xebia.xifire.model.ReimbursementItem addReimbursementItem(
        com.xebia.xifire.model.ReimbursementItem reimbursementItem)
        throws com.liferay.portal.kernel.exception.SystemException {
        return _reimbursementItemLocalService.addReimbursementItem(reimbursementItem);
    }

    /**
    * Creates a new reimbursement item with the primary key. Does not add the reimbursement item to the database.
    *
    * @param id the primary key for the new reimbursement item
    * @return the new reimbursement item
    */
    @Override
    public com.xebia.xifire.model.ReimbursementItem createReimbursementItem(
        long id) {
        return _reimbursementItemLocalService.createReimbursementItem(id);
    }

    /**
    * Deletes the reimbursement item with the primary key from the database. Also notifies the appropriate model listeners.
    *
    * @param id the primary key of the reimbursement item
    * @return the reimbursement item that was removed
    * @throws PortalException if a reimbursement item with the primary key could not be found
    * @throws SystemException if a system exception occurred
    */
    @Override
    public com.xebia.xifire.model.ReimbursementItem deleteReimbursementItem(
        long id)
        throws com.liferay.portal.kernel.exception.PortalException,
            com.liferay.portal.kernel.exception.SystemException {
        return _reimbursementItemLocalService.deleteReimbursementItem(id);
    }

    /**
    * Deletes the reimbursement item from the database. Also notifies the appropriate model listeners.
    *
    * @param reimbursementItem the reimbursement item
    * @return the reimbursement item that was removed
    * @throws SystemException if a system exception occurred
    */
    @Override
    public com.xebia.xifire.model.ReimbursementItem deleteReimbursementItem(
        com.xebia.xifire.model.ReimbursementItem reimbursementItem)
        throws com.liferay.portal.kernel.exception.SystemException {
        return _reimbursementItemLocalService.deleteReimbursementItem(reimbursementItem);
    }

    @Override
    public com.liferay.portal.kernel.dao.orm.DynamicQuery dynamicQuery() {
        return _reimbursementItemLocalService.dynamicQuery();
    }

    /**
    * Performs a dynamic query on the database and returns the matching rows.
    *
    * @param dynamicQuery the dynamic query
    * @return the matching rows
    * @throws SystemException if a system exception occurred
    */
    @Override
    @SuppressWarnings("rawtypes")
    public java.util.List dynamicQuery(
        com.liferay.portal.kernel.dao.orm.DynamicQuery dynamicQuery)
        throws com.liferay.portal.kernel.exception.SystemException {
        return _reimbursementItemLocalService.dynamicQuery(dynamicQuery);
    }

    /**
    * Performs a dynamic query on the database and returns a range of the matching rows.
    *
    * <p>
    * Useful when paginating results. Returns a maximum of <code>end - start</code> instances. <code>start</code> and <code>end</code> are not primary keys, they are indexes in the result set. Thus, <code>0</code> refers to the first result in the set. Setting both <code>start</code> and <code>end</code> to {@link com.liferay.portal.kernel.dao.orm.QueryUtil#ALL_POS} will return the full result set. If <code>orderByComparator</code> is specified, then the query will include the given ORDER BY logic. If <code>orderByComparator</code> is absent and pagination is required (<code>start</code> and <code>end</code> are not {@link com.liferay.portal.kernel.dao.orm.QueryUtil#ALL_POS}), then the query will include the default ORDER BY logic from {@link com.xebia.xifire.model.impl.ReimbursementItemModelImpl}. If both <code>orderByComparator</code> and pagination are absent, for performance reasons, the query will not have an ORDER BY clause and the returned result set will be sorted on by the primary key in an ascending order.
    * </p>
    *
    * @param dynamicQuery the dynamic query
    * @param start the lower bound of the range of model instances
    * @param end the upper bound of the range of model instances (not inclusive)
    * @return the range of matching rows
    * @throws SystemException if a system exception occurred
    */
    @Override
    @SuppressWarnings("rawtypes")
    public java.util.List dynamicQuery(
        com.liferay.portal.kernel.dao.orm.DynamicQuery dynamicQuery, int start,
        int end) throws com.liferay.portal.kernel.exception.SystemException {
        return _reimbursementItemLocalService.dynamicQuery(dynamicQuery, start,
            end);
    }

    /**
    * Performs a dynamic query on the database and returns an ordered range of the matching rows.
    *
    * <p>
    * Useful when paginating results. Returns a maximum of <code>end - start</code> instances. <code>start</code> and <code>end</code> are not primary keys, they are indexes in the result set. Thus, <code>0</code> refers to the first result in the set. Setting both <code>start</code> and <code>end</code> to {@link com.liferay.portal.kernel.dao.orm.QueryUtil#ALL_POS} will return the full result set. If <code>orderByComparator</code> is specified, then the query will include the given ORDER BY logic. If <code>orderByComparator</code> is absent and pagination is required (<code>start</code> and <code>end</code> are not {@link com.liferay.portal.kernel.dao.orm.QueryUtil#ALL_POS}), then the query will include the default ORDER BY logic from {@link com.xebia.xifire.model.impl.ReimbursementItemModelImpl}. If both <code>orderByComparator</code> and pagination are absent, for performance reasons, the query will not have an ORDER BY clause and the returned result set will be sorted on by the primary key in an ascending order.
    * </p>
    *
    * @param dynamicQuery the dynamic query
    * @param start the lower bound of the range of model instances
    * @param end the upper bound of the range of model instances (not inclusive)
    * @param orderByComparator the comparator to order the results by (optionally <code>null</code>)
    * @return the ordered range of matching rows
    * @throws SystemException if a system exception occurred
    */
    @Override
    @SuppressWarnings("rawtypes")
    public java.util.List dynamicQuery(
        com.liferay.portal.kernel.dao.orm.DynamicQuery dynamicQuery, int start,
        int end,
        com.liferay.portal.kernel.util.OrderByComparator orderByComparator)
        throws com.liferay.portal.kernel.exception.SystemException {
        return _reimbursementItemLocalService.dynamicQuery(dynamicQuery, start,
            end, orderByComparator);
    }

    /**
    * Returns the number of rows that match the dynamic query.
    *
    * @param dynamicQuery the dynamic query
    * @return the number of rows that match the dynamic query
    * @throws SystemException if a system exception occurred
    */
    @Override
    public long dynamicQueryCount(
        com.liferay.portal.kernel.dao.orm.DynamicQuery dynamicQuery)
        throws com.liferay.portal.kernel.exception.SystemException {
        return _reimbursementItemLocalService.dynamicQueryCount(dynamicQuery);
    }

    /**
    * Returns the number of rows that match the dynamic query.
    *
    * @param dynamicQuery the dynamic query
    * @param projection the projection to apply to the query
    * @return the number of rows that match the dynamic query
    * @throws SystemException if a system exception occurred
    */
    @Override
    public long dynamicQueryCount(
        com.liferay.portal.kernel.dao.orm.DynamicQuery dynamicQuery,
        com.liferay.portal.kernel.dao.orm.Projection projection)
        throws com.liferay.portal.kernel.exception.SystemException {
        return _reimbursementItemLocalService.dynamicQueryCount(dynamicQuery,
            projection);
    }

    @Override
    public com.xebia.xifire.model.ReimbursementItem fetchReimbursementItem(
        long id) throws com.liferay.portal.kernel.exception.SystemException {
        return _reimbursementItemLocalService.fetchReimbursementItem(id);
    }

    /**
    * Returns the reimbursement item with the primary key.
    *
    * @param id the primary key of the reimbursement item
    * @return the reimbursement item
    * @throws PortalException if a reimbursement item with the primary key could not be found
    * @throws SystemException if a system exception occurred
    */
    @Override
    public com.xebia.xifire.model.ReimbursementItem getReimbursementItem(
        long id)
        throws com.liferay.portal.kernel.exception.PortalException,
            com.liferay.portal.kernel.exception.SystemException {
        return _reimbursementItemLocalService.getReimbursementItem(id);
    }

    @Override
    public com.liferay.portal.model.PersistedModel getPersistedModel(
        java.io.Serializable primaryKeyObj)
        throws com.liferay.portal.kernel.exception.PortalException,
            com.liferay.portal.kernel.exception.SystemException {
        return _reimbursementItemLocalService.getPersistedModel(primaryKeyObj);
    }

    /**
    * Returns a range of all the reimbursement items.
    *
    * <p>
    * Useful when paginating results. Returns a maximum of <code>end - start</code> instances. <code>start</code> and <code>end</code> are not primary keys, they are indexes in the result set. Thus, <code>0</code> refers to the first result in the set. Setting both <code>start</code> and <code>end</code> to {@link com.liferay.portal.kernel.dao.orm.QueryUtil#ALL_POS} will return the full result set. If <code>orderByComparator</code> is specified, then the query will include the given ORDER BY logic. If <code>orderByComparator</code> is absent and pagination is required (<code>start</code> and <code>end</code> are not {@link com.liferay.portal.kernel.dao.orm.QueryUtil#ALL_POS}), then the query will include the default ORDER BY logic from {@link com.xebia.xifire.model.impl.ReimbursementItemModelImpl}. If both <code>orderByComparator</code> and pagination are absent, for performance reasons, the query will not have an ORDER BY clause and the returned result set will be sorted on by the primary key in an ascending order.
    * </p>
    *
    * @param start the lower bound of the range of reimbursement items
    * @param end the upper bound of the range of reimbursement items (not inclusive)
    * @return the range of reimbursement items
    * @throws SystemException if a system exception occurred
    */
    @Override
    public java.util.List<com.xebia.xifire.model.ReimbursementItem> getReimbursementItems(
        int start, int end)
        throws com.liferay.portal.kernel.exception.SystemException {
        return _reimbursementItemLocalService.getReimbursementItems(start, end);
    }

    /**
    * Returns the number of reimbursement items.
    *
    * @return the number of reimbursement items
    * @throws SystemException if a system exception occurred
    */
    @Override
    public int getReimbursementItemsCount()
        throws com.liferay.portal.kernel.exception.SystemException {
        return _reimbursementItemLocalService.getReimbursementItemsCount();
    }

    /**
    * Updates the reimbursement item in the database or adds it if it does not yet exist. Also notifies the appropriate model listeners.
    *
    * @param reimbursementItem the reimbursement item
    * @return the reimbursement item that was updated
    * @throws SystemException if a system exception occurred
    */
    @Override
    public com.xebia.xifire.model.ReimbursementItem updateReimbursementItem(
        com.xebia.xifire.model.ReimbursementItem reimbursementItem)
        throws com.liferay.portal.kernel.exception.SystemException {
        return _reimbursementItemLocalService.updateReimbursementItem(reimbursementItem);
    }

    @Override
    public com.xebia.xifire.model.ReimbursementItemDocumentBlobModel getDocumentBlobModel(
        java.io.Serializable primaryKey)
        throws com.liferay.portal.kernel.exception.SystemException {
        return _reimbursementItemLocalService.getDocumentBlobModel(primaryKey);
    }

    /**
    * Returns the Spring bean ID for this bean.
    *
    * @return the Spring bean ID for this bean
    */
    @Override
    public java.lang.String getBeanIdentifier() {
        return _reimbursementItemLocalService.getBeanIdentifier();
    }

    /**
    * Sets the Spring bean ID for this bean.
    *
    * @param beanIdentifier the Spring bean ID for this bean
    */
    @Override
    public void setBeanIdentifier(java.lang.String beanIdentifier) {
        _reimbursementItemLocalService.setBeanIdentifier(beanIdentifier);
    }

    @Override
    public java.lang.Object invokeMethod(java.lang.String name,
        java.lang.String[] parameterTypes, java.lang.Object[] arguments)
        throws java.lang.Throwable {
        return _reimbursementItemLocalService.invokeMethod(name,
            parameterTypes, arguments);
    }

    /**
     * @deprecated As of 6.1.0, replaced by {@link #getWrappedService}
     */
    public ReimbursementItemLocalService getWrappedReimbursementItemLocalService() {
        return _reimbursementItemLocalService;
    }

    /**
     * @deprecated As of 6.1.0, replaced by {@link #setWrappedService}
     */
    public void setWrappedReimbursementItemLocalService(
        ReimbursementItemLocalService reimbursementItemLocalService) {
        _reimbursementItemLocalService = reimbursementItemLocalService;
    }

    @Override
    public ReimbursementItemLocalService getWrappedService() {
        return _reimbursementItemLocalService;
    }

    @Override
    public void setWrappedService(
        ReimbursementItemLocalService reimbursementItemLocalService) {
        _reimbursementItemLocalService = reimbursementItemLocalService;
    }
}
