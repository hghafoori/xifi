package com.xebia.xifire.service.persistence;

import com.liferay.portal.kernel.bean.PortletBeanLocatorUtil;
import com.liferay.portal.kernel.dao.orm.DynamicQuery;
import com.liferay.portal.kernel.exception.SystemException;
import com.liferay.portal.kernel.util.OrderByComparator;
import com.liferay.portal.kernel.util.ReferenceRegistry;
import com.liferay.portal.service.ServiceContext;

import com.xebia.xifire.model.UserReimbursement;

import java.util.List;

/**
 * The persistence utility for the user reimbursement service. This utility wraps {@link UserReimbursementPersistenceImpl} and provides direct access to the database for CRUD operations. This utility should only be used by the service layer, as it must operate within a transaction. Never access this utility in a JSP, controller, model, or other front-end class.
 *
 * <p>
 * Caching information and settings can be found in <code>portal.properties</code>
 * </p>
 *
 * @author Brian Wing Shun Chan
 * @see UserReimbursementPersistence
 * @see UserReimbursementPersistenceImpl
 * @generated
 */
public class UserReimbursementUtil {
    private static UserReimbursementPersistence _persistence;

    /*
     * NOTE FOR DEVELOPERS:
     *
     * Never modify this class directly. Modify <code>service.xml</code> and rerun ServiceBuilder to regenerate this class.
     */

    /**
     * @see com.liferay.portal.service.persistence.BasePersistence#clearCache()
     */
    public static void clearCache() {
        getPersistence().clearCache();
    }

    /**
     * @see com.liferay.portal.service.persistence.BasePersistence#clearCache(com.liferay.portal.model.BaseModel)
     */
    public static void clearCache(UserReimbursement userReimbursement) {
        getPersistence().clearCache(userReimbursement);
    }

    /**
     * @see com.liferay.portal.service.persistence.BasePersistence#countWithDynamicQuery(DynamicQuery)
     */
    public static long countWithDynamicQuery(DynamicQuery dynamicQuery)
        throws SystemException {
        return getPersistence().countWithDynamicQuery(dynamicQuery);
    }

    /**
     * @see com.liferay.portal.service.persistence.BasePersistence#findWithDynamicQuery(DynamicQuery)
     */
    public static List<UserReimbursement> findWithDynamicQuery(
        DynamicQuery dynamicQuery) throws SystemException {
        return getPersistence().findWithDynamicQuery(dynamicQuery);
    }

    /**
     * @see com.liferay.portal.service.persistence.BasePersistence#findWithDynamicQuery(DynamicQuery, int, int)
     */
    public static List<UserReimbursement> findWithDynamicQuery(
        DynamicQuery dynamicQuery, int start, int end)
        throws SystemException {
        return getPersistence().findWithDynamicQuery(dynamicQuery, start, end);
    }

    /**
     * @see com.liferay.portal.service.persistence.BasePersistence#findWithDynamicQuery(DynamicQuery, int, int, OrderByComparator)
     */
    public static List<UserReimbursement> findWithDynamicQuery(
        DynamicQuery dynamicQuery, int start, int end,
        OrderByComparator orderByComparator) throws SystemException {
        return getPersistence()
                   .findWithDynamicQuery(dynamicQuery, start, end,
            orderByComparator);
    }

    /**
     * @see com.liferay.portal.service.persistence.BasePersistence#update(com.liferay.portal.model.BaseModel)
     */
    public static UserReimbursement update(UserReimbursement userReimbursement)
        throws SystemException {
        return getPersistence().update(userReimbursement);
    }

    /**
     * @see com.liferay.portal.service.persistence.BasePersistence#update(com.liferay.portal.model.BaseModel, ServiceContext)
     */
    public static UserReimbursement update(
        UserReimbursement userReimbursement, ServiceContext serviceContext)
        throws SystemException {
        return getPersistence().update(userReimbursement, serviceContext);
    }

    /**
    * Returns the user reimbursement where userId = &#63; or throws a {@link com.xebia.xifire.NoSuchUserReimbursementException} if it could not be found.
    *
    * @param userId the user ID
    * @return the matching user reimbursement
    * @throws com.xebia.xifire.NoSuchUserReimbursementException if a matching user reimbursement could not be found
    * @throws SystemException if a system exception occurred
    */
    public static com.xebia.xifire.model.UserReimbursement findByUserId(
        long userId)
        throws com.liferay.portal.kernel.exception.SystemException,
            com.xebia.xifire.NoSuchUserReimbursementException {
        return getPersistence().findByUserId(userId);
    }

    /**
    * Returns the user reimbursement where userId = &#63; or returns <code>null</code> if it could not be found. Uses the finder cache.
    *
    * @param userId the user ID
    * @return the matching user reimbursement, or <code>null</code> if a matching user reimbursement could not be found
    * @throws SystemException if a system exception occurred
    */
    public static com.xebia.xifire.model.UserReimbursement fetchByUserId(
        long userId) throws com.liferay.portal.kernel.exception.SystemException {
        return getPersistence().fetchByUserId(userId);
    }

    /**
    * Returns the user reimbursement where userId = &#63; or returns <code>null</code> if it could not be found, optionally using the finder cache.
    *
    * @param userId the user ID
    * @param retrieveFromCache whether to use the finder cache
    * @return the matching user reimbursement, or <code>null</code> if a matching user reimbursement could not be found
    * @throws SystemException if a system exception occurred
    */
    public static com.xebia.xifire.model.UserReimbursement fetchByUserId(
        long userId, boolean retrieveFromCache)
        throws com.liferay.portal.kernel.exception.SystemException {
        return getPersistence().fetchByUserId(userId, retrieveFromCache);
    }

    /**
    * Removes the user reimbursement where userId = &#63; from the database.
    *
    * @param userId the user ID
    * @return the user reimbursement that was removed
    * @throws SystemException if a system exception occurred
    */
    public static com.xebia.xifire.model.UserReimbursement removeByUserId(
        long userId)
        throws com.liferay.portal.kernel.exception.SystemException,
            com.xebia.xifire.NoSuchUserReimbursementException {
        return getPersistence().removeByUserId(userId);
    }

    /**
    * Returns the number of user reimbursements where userId = &#63;.
    *
    * @param userId the user ID
    * @return the number of matching user reimbursements
    * @throws SystemException if a system exception occurred
    */
    public static int countByUserId(long userId)
        throws com.liferay.portal.kernel.exception.SystemException {
        return getPersistence().countByUserId(userId);
    }

    /**
    * Caches the user reimbursement in the entity cache if it is enabled.
    *
    * @param userReimbursement the user reimbursement
    */
    public static void cacheResult(
        com.xebia.xifire.model.UserReimbursement userReimbursement) {
        getPersistence().cacheResult(userReimbursement);
    }

    /**
    * Caches the user reimbursements in the entity cache if it is enabled.
    *
    * @param userReimbursements the user reimbursements
    */
    public static void cacheResult(
        java.util.List<com.xebia.xifire.model.UserReimbursement> userReimbursements) {
        getPersistence().cacheResult(userReimbursements);
    }

    /**
    * Creates a new user reimbursement with the primary key. Does not add the user reimbursement to the database.
    *
    * @param id the primary key for the new user reimbursement
    * @return the new user reimbursement
    */
    public static com.xebia.xifire.model.UserReimbursement create(long id) {
        return getPersistence().create(id);
    }

    /**
    * Removes the user reimbursement with the primary key from the database. Also notifies the appropriate model listeners.
    *
    * @param id the primary key of the user reimbursement
    * @return the user reimbursement that was removed
    * @throws com.xebia.xifire.NoSuchUserReimbursementException if a user reimbursement with the primary key could not be found
    * @throws SystemException if a system exception occurred
    */
    public static com.xebia.xifire.model.UserReimbursement remove(long id)
        throws com.liferay.portal.kernel.exception.SystemException,
            com.xebia.xifire.NoSuchUserReimbursementException {
        return getPersistence().remove(id);
    }

    public static com.xebia.xifire.model.UserReimbursement updateImpl(
        com.xebia.xifire.model.UserReimbursement userReimbursement)
        throws com.liferay.portal.kernel.exception.SystemException {
        return getPersistence().updateImpl(userReimbursement);
    }

    /**
    * Returns the user reimbursement with the primary key or throws a {@link com.xebia.xifire.NoSuchUserReimbursementException} if it could not be found.
    *
    * @param id the primary key of the user reimbursement
    * @return the user reimbursement
    * @throws com.xebia.xifire.NoSuchUserReimbursementException if a user reimbursement with the primary key could not be found
    * @throws SystemException if a system exception occurred
    */
    public static com.xebia.xifire.model.UserReimbursement findByPrimaryKey(
        long id)
        throws com.liferay.portal.kernel.exception.SystemException,
            com.xebia.xifire.NoSuchUserReimbursementException {
        return getPersistence().findByPrimaryKey(id);
    }

    /**
    * Returns the user reimbursement with the primary key or returns <code>null</code> if it could not be found.
    *
    * @param id the primary key of the user reimbursement
    * @return the user reimbursement, or <code>null</code> if a user reimbursement with the primary key could not be found
    * @throws SystemException if a system exception occurred
    */
    public static com.xebia.xifire.model.UserReimbursement fetchByPrimaryKey(
        long id) throws com.liferay.portal.kernel.exception.SystemException {
        return getPersistence().fetchByPrimaryKey(id);
    }

    /**
    * Returns all the user reimbursements.
    *
    * @return the user reimbursements
    * @throws SystemException if a system exception occurred
    */
    public static java.util.List<com.xebia.xifire.model.UserReimbursement> findAll()
        throws com.liferay.portal.kernel.exception.SystemException {
        return getPersistence().findAll();
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
    public static java.util.List<com.xebia.xifire.model.UserReimbursement> findAll(
        int start, int end)
        throws com.liferay.portal.kernel.exception.SystemException {
        return getPersistence().findAll(start, end);
    }

    /**
    * Returns an ordered range of all the user reimbursements.
    *
    * <p>
    * Useful when paginating results. Returns a maximum of <code>end - start</code> instances. <code>start</code> and <code>end</code> are not primary keys, they are indexes in the result set. Thus, <code>0</code> refers to the first result in the set. Setting both <code>start</code> and <code>end</code> to {@link com.liferay.portal.kernel.dao.orm.QueryUtil#ALL_POS} will return the full result set. If <code>orderByComparator</code> is specified, then the query will include the given ORDER BY logic. If <code>orderByComparator</code> is absent and pagination is required (<code>start</code> and <code>end</code> are not {@link com.liferay.portal.kernel.dao.orm.QueryUtil#ALL_POS}), then the query will include the default ORDER BY logic from {@link com.xebia.xifire.model.impl.UserReimbursementModelImpl}. If both <code>orderByComparator</code> and pagination are absent, for performance reasons, the query will not have an ORDER BY clause and the returned result set will be sorted on by the primary key in an ascending order.
    * </p>
    *
    * @param start the lower bound of the range of user reimbursements
    * @param end the upper bound of the range of user reimbursements (not inclusive)
    * @param orderByComparator the comparator to order the results by (optionally <code>null</code>)
    * @return the ordered range of user reimbursements
    * @throws SystemException if a system exception occurred
    */
    public static java.util.List<com.xebia.xifire.model.UserReimbursement> findAll(
        int start, int end,
        com.liferay.portal.kernel.util.OrderByComparator orderByComparator)
        throws com.liferay.portal.kernel.exception.SystemException {
        return getPersistence().findAll(start, end, orderByComparator);
    }

    /**
    * Removes all the user reimbursements from the database.
    *
    * @throws SystemException if a system exception occurred
    */
    public static void removeAll()
        throws com.liferay.portal.kernel.exception.SystemException {
        getPersistence().removeAll();
    }

    /**
    * Returns the number of user reimbursements.
    *
    * @return the number of user reimbursements
    * @throws SystemException if a system exception occurred
    */
    public static int countAll()
        throws com.liferay.portal.kernel.exception.SystemException {
        return getPersistence().countAll();
    }

    public static UserReimbursementPersistence getPersistence() {
        if (_persistence == null) {
            _persistence = (UserReimbursementPersistence) PortletBeanLocatorUtil.locate(com.xebia.xifire.service.ClpSerializer.getServletContextName(),
                    UserReimbursementPersistence.class.getName());

            ReferenceRegistry.registerReference(UserReimbursementUtil.class,
                "_persistence");
        }

        return _persistence;
    }

    /**
     * @deprecated As of 6.2.0
     */
    public void setPersistence(UserReimbursementPersistence persistence) {
    }
}
