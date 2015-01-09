package com.xebia.xifire.service.persistence;

import com.liferay.portal.kernel.bean.PortletBeanLocatorUtil;
import com.liferay.portal.kernel.dao.orm.DynamicQuery;
import com.liferay.portal.kernel.exception.SystemException;
import com.liferay.portal.kernel.util.OrderByComparator;
import com.liferay.portal.kernel.util.ReferenceRegistry;
import com.liferay.portal.service.ServiceContext;

import com.xebia.xifire.model.EmployeeDetail;

import java.util.List;

/**
 * The persistence utility for the employee detail service. This utility wraps {@link EmployeeDetailPersistenceImpl} and provides direct access to the database for CRUD operations. This utility should only be used by the service layer, as it must operate within a transaction. Never access this utility in a JSP, controller, model, or other front-end class.
 *
 * <p>
 * Caching information and settings can be found in <code>portal.properties</code>
 * </p>
 *
 * @author Brian Wing Shun Chan
 * @see EmployeeDetailPersistence
 * @see EmployeeDetailPersistenceImpl
 * @generated
 */
public class EmployeeDetailUtil {
    private static EmployeeDetailPersistence _persistence;

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
    public static void clearCache(EmployeeDetail employeeDetail) {
        getPersistence().clearCache(employeeDetail);
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
    public static List<EmployeeDetail> findWithDynamicQuery(
        DynamicQuery dynamicQuery) throws SystemException {
        return getPersistence().findWithDynamicQuery(dynamicQuery);
    }

    /**
     * @see com.liferay.portal.service.persistence.BasePersistence#findWithDynamicQuery(DynamicQuery, int, int)
     */
    public static List<EmployeeDetail> findWithDynamicQuery(
        DynamicQuery dynamicQuery, int start, int end)
        throws SystemException {
        return getPersistence().findWithDynamicQuery(dynamicQuery, start, end);
    }

    /**
     * @see com.liferay.portal.service.persistence.BasePersistence#findWithDynamicQuery(DynamicQuery, int, int, OrderByComparator)
     */
    public static List<EmployeeDetail> findWithDynamicQuery(
        DynamicQuery dynamicQuery, int start, int end,
        OrderByComparator orderByComparator) throws SystemException {
        return getPersistence()
                   .findWithDynamicQuery(dynamicQuery, start, end,
            orderByComparator);
    }

    /**
     * @see com.liferay.portal.service.persistence.BasePersistence#update(com.liferay.portal.model.BaseModel)
     */
    public static EmployeeDetail update(EmployeeDetail employeeDetail)
        throws SystemException {
        return getPersistence().update(employeeDetail);
    }

    /**
     * @see com.liferay.portal.service.persistence.BasePersistence#update(com.liferay.portal.model.BaseModel, ServiceContext)
     */
    public static EmployeeDetail update(EmployeeDetail employeeDetail,
        ServiceContext serviceContext) throws SystemException {
        return getPersistence().update(employeeDetail, serviceContext);
    }

    /**
    * Returns the employee detail where userId = &#63; or throws a {@link com.xebia.xifire.NoSuchEmployeeDetailException} if it could not be found.
    *
    * @param userId the user ID
    * @return the matching employee detail
    * @throws com.xebia.xifire.NoSuchEmployeeDetailException if a matching employee detail could not be found
    * @throws SystemException if a system exception occurred
    */
    public static com.xebia.xifire.model.EmployeeDetail findByUserId(int userId)
        throws com.liferay.portal.kernel.exception.SystemException,
            com.xebia.xifire.NoSuchEmployeeDetailException {
        return getPersistence().findByUserId(userId);
    }

    /**
    * Returns the employee detail where userId = &#63; or returns <code>null</code> if it could not be found. Uses the finder cache.
    *
    * @param userId the user ID
    * @return the matching employee detail, or <code>null</code> if a matching employee detail could not be found
    * @throws SystemException if a system exception occurred
    */
    public static com.xebia.xifire.model.EmployeeDetail fetchByUserId(
        int userId) throws com.liferay.portal.kernel.exception.SystemException {
        return getPersistence().fetchByUserId(userId);
    }

    /**
    * Returns the employee detail where userId = &#63; or returns <code>null</code> if it could not be found, optionally using the finder cache.
    *
    * @param userId the user ID
    * @param retrieveFromCache whether to use the finder cache
    * @return the matching employee detail, or <code>null</code> if a matching employee detail could not be found
    * @throws SystemException if a system exception occurred
    */
    public static com.xebia.xifire.model.EmployeeDetail fetchByUserId(
        int userId, boolean retrieveFromCache)
        throws com.liferay.portal.kernel.exception.SystemException {
        return getPersistence().fetchByUserId(userId, retrieveFromCache);
    }

    /**
    * Removes the employee detail where userId = &#63; from the database.
    *
    * @param userId the user ID
    * @return the employee detail that was removed
    * @throws SystemException if a system exception occurred
    */
    public static com.xebia.xifire.model.EmployeeDetail removeByUserId(
        int userId)
        throws com.liferay.portal.kernel.exception.SystemException,
            com.xebia.xifire.NoSuchEmployeeDetailException {
        return getPersistence().removeByUserId(userId);
    }

    /**
    * Returns the number of employee details where userId = &#63;.
    *
    * @param userId the user ID
    * @return the number of matching employee details
    * @throws SystemException if a system exception occurred
    */
    public static int countByUserId(int userId)
        throws com.liferay.portal.kernel.exception.SystemException {
        return getPersistence().countByUserId(userId);
    }

    /**
    * Caches the employee detail in the entity cache if it is enabled.
    *
    * @param employeeDetail the employee detail
    */
    public static void cacheResult(
        com.xebia.xifire.model.EmployeeDetail employeeDetail) {
        getPersistence().cacheResult(employeeDetail);
    }

    /**
    * Caches the employee details in the entity cache if it is enabled.
    *
    * @param employeeDetails the employee details
    */
    public static void cacheResult(
        java.util.List<com.xebia.xifire.model.EmployeeDetail> employeeDetails) {
        getPersistence().cacheResult(employeeDetails);
    }

    /**
    * Creates a new employee detail with the primary key. Does not add the employee detail to the database.
    *
    * @param id the primary key for the new employee detail
    * @return the new employee detail
    */
    public static com.xebia.xifire.model.EmployeeDetail create(int id) {
        return getPersistence().create(id);
    }

    /**
    * Removes the employee detail with the primary key from the database. Also notifies the appropriate model listeners.
    *
    * @param id the primary key of the employee detail
    * @return the employee detail that was removed
    * @throws com.xebia.xifire.NoSuchEmployeeDetailException if a employee detail with the primary key could not be found
    * @throws SystemException if a system exception occurred
    */
    public static com.xebia.xifire.model.EmployeeDetail remove(int id)
        throws com.liferay.portal.kernel.exception.SystemException,
            com.xebia.xifire.NoSuchEmployeeDetailException {
        return getPersistence().remove(id);
    }

    public static com.xebia.xifire.model.EmployeeDetail updateImpl(
        com.xebia.xifire.model.EmployeeDetail employeeDetail)
        throws com.liferay.portal.kernel.exception.SystemException {
        return getPersistence().updateImpl(employeeDetail);
    }

    /**
    * Returns the employee detail with the primary key or throws a {@link com.xebia.xifire.NoSuchEmployeeDetailException} if it could not be found.
    *
    * @param id the primary key of the employee detail
    * @return the employee detail
    * @throws com.xebia.xifire.NoSuchEmployeeDetailException if a employee detail with the primary key could not be found
    * @throws SystemException if a system exception occurred
    */
    public static com.xebia.xifire.model.EmployeeDetail findByPrimaryKey(int id)
        throws com.liferay.portal.kernel.exception.SystemException,
            com.xebia.xifire.NoSuchEmployeeDetailException {
        return getPersistence().findByPrimaryKey(id);
    }

    /**
    * Returns the employee detail with the primary key or returns <code>null</code> if it could not be found.
    *
    * @param id the primary key of the employee detail
    * @return the employee detail, or <code>null</code> if a employee detail with the primary key could not be found
    * @throws SystemException if a system exception occurred
    */
    public static com.xebia.xifire.model.EmployeeDetail fetchByPrimaryKey(
        int id) throws com.liferay.portal.kernel.exception.SystemException {
        return getPersistence().fetchByPrimaryKey(id);
    }

    /**
    * Returns all the employee details.
    *
    * @return the employee details
    * @throws SystemException if a system exception occurred
    */
    public static java.util.List<com.xebia.xifire.model.EmployeeDetail> findAll()
        throws com.liferay.portal.kernel.exception.SystemException {
        return getPersistence().findAll();
    }

    /**
    * Returns a range of all the employee details.
    *
    * <p>
    * Useful when paginating results. Returns a maximum of <code>end - start</code> instances. <code>start</code> and <code>end</code> are not primary keys, they are indexes in the result set. Thus, <code>0</code> refers to the first result in the set. Setting both <code>start</code> and <code>end</code> to {@link com.liferay.portal.kernel.dao.orm.QueryUtil#ALL_POS} will return the full result set. If <code>orderByComparator</code> is specified, then the query will include the given ORDER BY logic. If <code>orderByComparator</code> is absent and pagination is required (<code>start</code> and <code>end</code> are not {@link com.liferay.portal.kernel.dao.orm.QueryUtil#ALL_POS}), then the query will include the default ORDER BY logic from {@link com.xebia.xifire.model.impl.EmployeeDetailModelImpl}. If both <code>orderByComparator</code> and pagination are absent, for performance reasons, the query will not have an ORDER BY clause and the returned result set will be sorted on by the primary key in an ascending order.
    * </p>
    *
    * @param start the lower bound of the range of employee details
    * @param end the upper bound of the range of employee details (not inclusive)
    * @return the range of employee details
    * @throws SystemException if a system exception occurred
    */
    public static java.util.List<com.xebia.xifire.model.EmployeeDetail> findAll(
        int start, int end)
        throws com.liferay.portal.kernel.exception.SystemException {
        return getPersistence().findAll(start, end);
    }

    /**
    * Returns an ordered range of all the employee details.
    *
    * <p>
    * Useful when paginating results. Returns a maximum of <code>end - start</code> instances. <code>start</code> and <code>end</code> are not primary keys, they are indexes in the result set. Thus, <code>0</code> refers to the first result in the set. Setting both <code>start</code> and <code>end</code> to {@link com.liferay.portal.kernel.dao.orm.QueryUtil#ALL_POS} will return the full result set. If <code>orderByComparator</code> is specified, then the query will include the given ORDER BY logic. If <code>orderByComparator</code> is absent and pagination is required (<code>start</code> and <code>end</code> are not {@link com.liferay.portal.kernel.dao.orm.QueryUtil#ALL_POS}), then the query will include the default ORDER BY logic from {@link com.xebia.xifire.model.impl.EmployeeDetailModelImpl}. If both <code>orderByComparator</code> and pagination are absent, for performance reasons, the query will not have an ORDER BY clause and the returned result set will be sorted on by the primary key in an ascending order.
    * </p>
    *
    * @param start the lower bound of the range of employee details
    * @param end the upper bound of the range of employee details (not inclusive)
    * @param orderByComparator the comparator to order the results by (optionally <code>null</code>)
    * @return the ordered range of employee details
    * @throws SystemException if a system exception occurred
    */
    public static java.util.List<com.xebia.xifire.model.EmployeeDetail> findAll(
        int start, int end,
        com.liferay.portal.kernel.util.OrderByComparator orderByComparator)
        throws com.liferay.portal.kernel.exception.SystemException {
        return getPersistence().findAll(start, end, orderByComparator);
    }

    /**
    * Removes all the employee details from the database.
    *
    * @throws SystemException if a system exception occurred
    */
    public static void removeAll()
        throws com.liferay.portal.kernel.exception.SystemException {
        getPersistence().removeAll();
    }

    /**
    * Returns the number of employee details.
    *
    * @return the number of employee details
    * @throws SystemException if a system exception occurred
    */
    public static int countAll()
        throws com.liferay.portal.kernel.exception.SystemException {
        return getPersistence().countAll();
    }

    public static EmployeeDetailPersistence getPersistence() {
        if (_persistence == null) {
            _persistence = (EmployeeDetailPersistence) PortletBeanLocatorUtil.locate(com.xebia.xifire.service.ClpSerializer.getServletContextName(),
                    EmployeeDetailPersistence.class.getName());

            ReferenceRegistry.registerReference(EmployeeDetailUtil.class,
                "_persistence");
        }

        return _persistence;
    }

    /**
     * @deprecated As of 6.2.0
     */
    public void setPersistence(EmployeeDetailPersistence persistence) {
    }
}
