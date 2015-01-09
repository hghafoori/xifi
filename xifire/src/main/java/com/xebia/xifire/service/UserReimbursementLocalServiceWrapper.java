package com.xebia.xifire.service;

import com.liferay.portal.service.ServiceWrapper;

/**
 * Provides a wrapper for {@link UserReimbursementLocalService}.
 *
 * @author Brian Wing Shun Chan
 * @see UserReimbursementLocalService
 * @generated
 */
public class UserReimbursementLocalServiceWrapper
    implements UserReimbursementLocalService,
        ServiceWrapper<UserReimbursementLocalService> {
    private UserReimbursementLocalService _userReimbursementLocalService;

    public UserReimbursementLocalServiceWrapper(
        UserReimbursementLocalService userReimbursementLocalService) {
        _userReimbursementLocalService = userReimbursementLocalService;
    }

    /**
    * Adds the user reimbursement to the database. Also notifies the appropriate model listeners.
    *
    * @param userReimbursement the user reimbursement
    * @return the user reimbursement that was added
    * @throws SystemException if a system exception occurred
    */
    @Override
    public com.xebia.xifire.model.UserReimbursement addUserReimbursement(
        com.xebia.xifire.model.UserReimbursement userReimbursement)
        throws com.liferay.portal.kernel.exception.SystemException {
        return _userReimbursementLocalService.addUserReimbursement(userReimbursement);
    }

    /**
    * Creates a new user reimbursement with the primary key. Does not add the user reimbursement to the database.
    *
    * @param id the primary key for the new user reimbursement
    * @return the new user reimbursement
    */
    @Override
    public com.xebia.xifire.model.UserReimbursement createUserReimbursement(
        long id) {
        return _userReimbursementLocalService.createUserReimbursement(id);
    }

    /**
    * Deletes the user reimbursement with the primary key from the database. Also notifies the appropriate model listeners.
    *
    * @param id the primary key of the user reimbursement
    * @return the user reimbursement that was removed
    * @throws PortalException if a user reimbursement with the primary key could not be found
    * @throws SystemException if a system exception occurred
    */
    @Override
    public com.xebia.xifire.model.UserReimbursement deleteUserReimbursement(
        long id)
        throws com.liferay.portal.kernel.exception.PortalException,
            com.liferay.portal.kernel.exception.SystemException {
        return _userReimbursementLocalService.deleteUserReimbursement(id);
    }

    /**
    * Deletes the user reimbursement from the database. Also notifies the appropriate model listeners.
    *
    * @param userReimbursement the user reimbursement
    * @return the user reimbursement that was removed
    * @throws SystemException if a system exception occurred
    */
    @Override
    public com.xebia.xifire.model.UserReimbursement deleteUserReimbursement(
        com.xebia.xifire.model.UserReimbursement userReimbursement)
        throws com.liferay.portal.kernel.exception.SystemException {
        return _userReimbursementLocalService.deleteUserReimbursement(userReimbursement);
    }

    @Override
    public com.liferay.portal.kernel.dao.orm.DynamicQuery dynamicQuery() {
        return _userReimbursementLocalService.dynamicQuery();
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
        return _userReimbursementLocalService.dynamicQuery(dynamicQuery);
    }

    /**
    * Performs a dynamic query on the database and returns a range of the matching rows.
    *
    * <p>
    * Useful when paginating results. Returns a maximum of <code>end - start</code> instances. <code>start</code> and <code>end</code> are not primary keys, they are indexes in the result set. Thus, <code>0</code> refers to the first result in the set. Setting both <code>start</code> and <code>end</code> to {@link com.liferay.portal.kernel.dao.orm.QueryUtil#ALL_POS} will return the full result set. If <code>orderByComparator</code> is specified, then the query will include the given ORDER BY logic. If <code>orderByComparator</code> is absent and pagination is required (<code>start</code> and <code>end</code> are not {@link com.liferay.portal.kernel.dao.orm.QueryUtil#ALL_POS}), then the query will include the default ORDER BY logic from {@link com.xebia.xifire.model.impl.UserReimbursementModelImpl}. If both <code>orderByComparator</code> and pagination are absent, for performance reasons, the query will not have an ORDER BY clause and the returned result set will be sorted on by the primary key in an ascending order.
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
        return _userReimbursementLocalService.dynamicQuery(dynamicQuery, start,
            end);
    }

    /**
    * Performs a dynamic query on the database and returns an ordered range of the matching rows.
    *
    * <p>
    * Useful when paginating results. Returns a maximum of <code>end - start</code> instances. <code>start</code> and <code>end</code> are not primary keys, they are indexes in the result set. Thus, <code>0</code> refers to the first result in the set. Setting both <code>start</code> and <code>end</code> to {@link com.liferay.portal.kernel.dao.orm.QueryUtil#ALL_POS} will return the full result set. If <code>orderByComparator</code> is specified, then the query will include the given ORDER BY logic. If <code>orderByComparator</code> is absent and pagination is required (<code>start</code> and <code>end</code> are not {@link com.liferay.portal.kernel.dao.orm.QueryUtil#ALL_POS}), then the query will include the default ORDER BY logic from {@link com.xebia.xifire.model.impl.UserReimbursementModelImpl}. If both <code>orderByComparator</code> and pagination are absent, for performance reasons, the query will not have an ORDER BY clause and the returned result set will be sorted on by the primary key in an ascending order.
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
        return _userReimbursementLocalService.dynamicQuery(dynamicQuery, start,
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
        return _userReimbursementLocalService.dynamicQueryCount(dynamicQuery);
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
        return _userReimbursementLocalService.dynamicQueryCount(dynamicQuery,
            projection);
    }

    @Override
    public com.xebia.xifire.model.UserReimbursement fetchUserReimbursement(
        long id) throws com.liferay.portal.kernel.exception.SystemException {
        return _userReimbursementLocalService.fetchUserReimbursement(id);
    }

    /**
    * Returns the user reimbursement with the primary key.
    *
    * @param id the primary key of the user reimbursement
    * @return the user reimbursement
    * @throws PortalException if a user reimbursement with the primary key could not be found
    * @throws SystemException if a system exception occurred
    */
    @Override
    public com.xebia.xifire.model.UserReimbursement getUserReimbursement(
        long id)
        throws com.liferay.portal.kernel.exception.PortalException,
            com.liferay.portal.kernel.exception.SystemException {
        return _userReimbursementLocalService.getUserReimbursement(id);
    }

    @Override
    public com.liferay.portal.model.PersistedModel getPersistedModel(
        java.io.Serializable primaryKeyObj)
        throws com.liferay.portal.kernel.exception.PortalException,
            com.liferay.portal.kernel.exception.SystemException {
        return _userReimbursementLocalService.getPersistedModel(primaryKeyObj);
    }

    /**
    * Returns a range of all the user reimbursements.
    *
    * <p>
    * Useful when paginating results. Returns a maximum of <code>end - start</code> instances. <code>start</code> and <code>end</code> are not primary keys, they are indexes in the result set. Thus, <code>0</code> refers to the first result in the set. Setting both <code>start</code> and <code>end</code> to {@link com.liferay.portal.kernel.dao.orm.QueryUtil#ALL_POS} will return the full result set. If <code>orderByComparator</code> is specified, then the query will include the given ORDER BY logic. If <code>orderByComparator</code> is absent and pagination is required (<code>start</code> and <code>end</code> are not {@link com.liferay.portal.kernel.dao.orm.QueryUtil#ALL_POS}), then the query will include the default ORDER BY logic from {@link com.xebia.xifire.model.impl.UserReimbursementModelImpl}. If both <code>orderByComparator</code> and pagination are absent, for performance reasons, the query will not have an ORDER BY clause and the returned result set will be sorted on by the primary key in an ascending order.
    * </p>
    *
    * @param start the lower bound of the range of user reimbursements
    * @param end the upper bound of the range of user reimbursements (not inclusive)
    * @return the range of user reimbursements
    * @throws SystemException if a system exception occurred
    */
    @Override
    public java.util.List<com.xebia.xifire.model.UserReimbursement> getUserReimbursements(
        int start, int end)
        throws com.liferay.portal.kernel.exception.SystemException {
        return _userReimbursementLocalService.getUserReimbursements(start, end);
    }

    /**
    * Returns the number of user reimbursements.
    *
    * @return the number of user reimbursements
    * @throws SystemException if a system exception occurred
    */
    @Override
    public int getUserReimbursementsCount()
        throws com.liferay.portal.kernel.exception.SystemException {
        return _userReimbursementLocalService.getUserReimbursementsCount();
    }

    /**
    * Updates the user reimbursement in the database or adds it if it does not yet exist. Also notifies the appropriate model listeners.
    *
    * @param userReimbursement the user reimbursement
    * @return the user reimbursement that was updated
    * @throws SystemException if a system exception occurred
    */
    @Override
    public com.xebia.xifire.model.UserReimbursement updateUserReimbursement(
        com.xebia.xifire.model.UserReimbursement userReimbursement)
        throws com.liferay.portal.kernel.exception.SystemException {
        return _userReimbursementLocalService.updateUserReimbursement(userReimbursement);
    }

    /**
    * Returns the Spring bean ID for this bean.
    *
    * @return the Spring bean ID for this bean
    */
    @Override
    public java.lang.String getBeanIdentifier() {
        return _userReimbursementLocalService.getBeanIdentifier();
    }

    /**
    * Sets the Spring bean ID for this bean.
    *
    * @param beanIdentifier the Spring bean ID for this bean
    */
    @Override
    public void setBeanIdentifier(java.lang.String beanIdentifier) {
        _userReimbursementLocalService.setBeanIdentifier(beanIdentifier);
    }

    @Override
    public java.lang.Object invokeMethod(java.lang.String name,
        java.lang.String[] parameterTypes, java.lang.Object[] arguments)
        throws java.lang.Throwable {
        return _userReimbursementLocalService.invokeMethod(name,
            parameterTypes, arguments);
    }

    @Override
    public com.xebia.xifire.model.UserReimbursement findByUserId(int userId)
        throws com.liferay.portal.kernel.exception.SystemException,
            com.xebia.xifire.NoSuchUserReimbursementException {
        return _userReimbursementLocalService.findByUserId(userId);
    }

    /**
     * @deprecated As of 6.1.0, replaced by {@link #getWrappedService}
     */
    public UserReimbursementLocalService getWrappedUserReimbursementLocalService() {
        return _userReimbursementLocalService;
    }

    /**
     * @deprecated As of 6.1.0, replaced by {@link #setWrappedService}
     */
    public void setWrappedUserReimbursementLocalService(
        UserReimbursementLocalService userReimbursementLocalService) {
        _userReimbursementLocalService = userReimbursementLocalService;
    }

    @Override
    public UserReimbursementLocalService getWrappedService() {
        return _userReimbursementLocalService;
    }

    @Override
    public void setWrappedService(
        UserReimbursementLocalService userReimbursementLocalService) {
        _userReimbursementLocalService = userReimbursementLocalService;
    }
}
