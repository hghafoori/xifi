package com.xebia.xifire.service.persistence;

import com.liferay.portal.kernel.bean.PortletBeanLocatorUtil;
import com.liferay.portal.kernel.dao.orm.DynamicQuery;
import com.liferay.portal.kernel.exception.SystemException;
import com.liferay.portal.kernel.util.OrderByComparator;
import com.liferay.portal.kernel.util.ReferenceRegistry;
import com.liferay.portal.service.ServiceContext;

import com.xebia.xifire.model.Salary;

import java.util.List;

/**
 * The persistence utility for the salary service. This utility wraps {@link SalaryPersistenceImpl} and provides direct access to the database for CRUD operations. This utility should only be used by the service layer, as it must operate within a transaction. Never access this utility in a JSP, controller, model, or other front-end class.
 *
 * <p>
 * Caching information and settings can be found in <code>portal.properties</code>
 * </p>
 *
 * @author Brian Wing Shun Chan
 * @see SalaryPersistence
 * @see SalaryPersistenceImpl
 * @generated
 */
public class SalaryUtil {
    private static SalaryPersistence _persistence;

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
    public static void clearCache(Salary salary) {
        getPersistence().clearCache(salary);
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
    public static List<Salary> findWithDynamicQuery(DynamicQuery dynamicQuery)
        throws SystemException {
        return getPersistence().findWithDynamicQuery(dynamicQuery);
    }

    /**
     * @see com.liferay.portal.service.persistence.BasePersistence#findWithDynamicQuery(DynamicQuery, int, int)
     */
    public static List<Salary> findWithDynamicQuery(DynamicQuery dynamicQuery,
        int start, int end) throws SystemException {
        return getPersistence().findWithDynamicQuery(dynamicQuery, start, end);
    }

    /**
     * @see com.liferay.portal.service.persistence.BasePersistence#findWithDynamicQuery(DynamicQuery, int, int, OrderByComparator)
     */
    public static List<Salary> findWithDynamicQuery(DynamicQuery dynamicQuery,
        int start, int end, OrderByComparator orderByComparator)
        throws SystemException {
        return getPersistence()
                   .findWithDynamicQuery(dynamicQuery, start, end,
            orderByComparator);
    }

    /**
     * @see com.liferay.portal.service.persistence.BasePersistence#update(com.liferay.portal.model.BaseModel)
     */
    public static Salary update(Salary salary) throws SystemException {
        return getPersistence().update(salary);
    }

    /**
     * @see com.liferay.portal.service.persistence.BasePersistence#update(com.liferay.portal.model.BaseModel, ServiceContext)
     */
    public static Salary update(Salary salary, ServiceContext serviceContext)
        throws SystemException {
        return getPersistence().update(salary, serviceContext);
    }

    /**
    * Returns the salary where userId = &#63; and salaryMonth = &#63; and salaryYear = &#63; or throws a {@link com.xebia.xifire.NoSuchSalaryException} if it could not be found.
    *
    * @param userId the user ID
    * @param salaryMonth the salary month
    * @param salaryYear the salary year
    * @return the matching salary
    * @throws com.xebia.xifire.NoSuchSalaryException if a matching salary could not be found
    * @throws SystemException if a system exception occurred
    */
    public static com.xebia.xifire.model.Salary findByUserIdMonthAndYear(
        long userId, int salaryMonth, int salaryYear)
        throws com.liferay.portal.kernel.exception.SystemException,
            com.xebia.xifire.NoSuchSalaryException {
        return getPersistence()
                   .findByUserIdMonthAndYear(userId, salaryMonth, salaryYear);
    }

    /**
    * Returns the salary where userId = &#63; and salaryMonth = &#63; and salaryYear = &#63; or returns <code>null</code> if it could not be found. Uses the finder cache.
    *
    * @param userId the user ID
    * @param salaryMonth the salary month
    * @param salaryYear the salary year
    * @return the matching salary, or <code>null</code> if a matching salary could not be found
    * @throws SystemException if a system exception occurred
    */
    public static com.xebia.xifire.model.Salary fetchByUserIdMonthAndYear(
        long userId, int salaryMonth, int salaryYear)
        throws com.liferay.portal.kernel.exception.SystemException {
        return getPersistence()
                   .fetchByUserIdMonthAndYear(userId, salaryMonth, salaryYear);
    }

    /**
    * Returns the salary where userId = &#63; and salaryMonth = &#63; and salaryYear = &#63; or returns <code>null</code> if it could not be found, optionally using the finder cache.
    *
    * @param userId the user ID
    * @param salaryMonth the salary month
    * @param salaryYear the salary year
    * @param retrieveFromCache whether to use the finder cache
    * @return the matching salary, or <code>null</code> if a matching salary could not be found
    * @throws SystemException if a system exception occurred
    */
    public static com.xebia.xifire.model.Salary fetchByUserIdMonthAndYear(
        long userId, int salaryMonth, int salaryYear, boolean retrieveFromCache)
        throws com.liferay.portal.kernel.exception.SystemException {
        return getPersistence()
                   .fetchByUserIdMonthAndYear(userId, salaryMonth, salaryYear,
            retrieveFromCache);
    }

    /**
    * Removes the salary where userId = &#63; and salaryMonth = &#63; and salaryYear = &#63; from the database.
    *
    * @param userId the user ID
    * @param salaryMonth the salary month
    * @param salaryYear the salary year
    * @return the salary that was removed
    * @throws SystemException if a system exception occurred
    */
    public static com.xebia.xifire.model.Salary removeByUserIdMonthAndYear(
        long userId, int salaryMonth, int salaryYear)
        throws com.liferay.portal.kernel.exception.SystemException,
            com.xebia.xifire.NoSuchSalaryException {
        return getPersistence()
                   .removeByUserIdMonthAndYear(userId, salaryMonth, salaryYear);
    }

    /**
    * Returns the number of salaries where userId = &#63; and salaryMonth = &#63; and salaryYear = &#63;.
    *
    * @param userId the user ID
    * @param salaryMonth the salary month
    * @param salaryYear the salary year
    * @return the number of matching salaries
    * @throws SystemException if a system exception occurred
    */
    public static int countByUserIdMonthAndYear(long userId, int salaryMonth,
        int salaryYear)
        throws com.liferay.portal.kernel.exception.SystemException {
        return getPersistence()
                   .countByUserIdMonthAndYear(userId, salaryMonth, salaryYear);
    }

    /**
    * Returns the salary where userId = &#63; and salaryYear = &#63; or throws a {@link com.xebia.xifire.NoSuchSalaryException} if it could not be found.
    *
    * @param userId the user ID
    * @param salaryYear the salary year
    * @return the matching salary
    * @throws com.xebia.xifire.NoSuchSalaryException if a matching salary could not be found
    * @throws SystemException if a system exception occurred
    */
    public static com.xebia.xifire.model.Salary findByUserIdYear(long userId,
        int salaryYear)
        throws com.liferay.portal.kernel.exception.SystemException,
            com.xebia.xifire.NoSuchSalaryException {
        return getPersistence().findByUserIdYear(userId, salaryYear);
    }

    /**
    * Returns the salary where userId = &#63; and salaryYear = &#63; or returns <code>null</code> if it could not be found. Uses the finder cache.
    *
    * @param userId the user ID
    * @param salaryYear the salary year
    * @return the matching salary, or <code>null</code> if a matching salary could not be found
    * @throws SystemException if a system exception occurred
    */
    public static com.xebia.xifire.model.Salary fetchByUserIdYear(long userId,
        int salaryYear)
        throws com.liferay.portal.kernel.exception.SystemException {
        return getPersistence().fetchByUserIdYear(userId, salaryYear);
    }

    /**
    * Returns the salary where userId = &#63; and salaryYear = &#63; or returns <code>null</code> if it could not be found, optionally using the finder cache.
    *
    * @param userId the user ID
    * @param salaryYear the salary year
    * @param retrieveFromCache whether to use the finder cache
    * @return the matching salary, or <code>null</code> if a matching salary could not be found
    * @throws SystemException if a system exception occurred
    */
    public static com.xebia.xifire.model.Salary fetchByUserIdYear(long userId,
        int salaryYear, boolean retrieveFromCache)
        throws com.liferay.portal.kernel.exception.SystemException {
        return getPersistence()
                   .fetchByUserIdYear(userId, salaryYear, retrieveFromCache);
    }

    /**
    * Removes the salary where userId = &#63; and salaryYear = &#63; from the database.
    *
    * @param userId the user ID
    * @param salaryYear the salary year
    * @return the salary that was removed
    * @throws SystemException if a system exception occurred
    */
    public static com.xebia.xifire.model.Salary removeByUserIdYear(
        long userId, int salaryYear)
        throws com.liferay.portal.kernel.exception.SystemException,
            com.xebia.xifire.NoSuchSalaryException {
        return getPersistence().removeByUserIdYear(userId, salaryYear);
    }

    /**
    * Returns the number of salaries where userId = &#63; and salaryYear = &#63;.
    *
    * @param userId the user ID
    * @param salaryYear the salary year
    * @return the number of matching salaries
    * @throws SystemException if a system exception occurred
    */
    public static int countByUserIdYear(long userId, int salaryYear)
        throws com.liferay.portal.kernel.exception.SystemException {
        return getPersistence().countByUserIdYear(userId, salaryYear);
    }

    /**
    * Returns the salary where userId = &#63; or throws a {@link com.xebia.xifire.NoSuchSalaryException} if it could not be found.
    *
    * @param userId the user ID
    * @return the matching salary
    * @throws com.xebia.xifire.NoSuchSalaryException if a matching salary could not be found
    * @throws SystemException if a system exception occurred
    */
    public static com.xebia.xifire.model.Salary findByUserId(long userId)
        throws com.liferay.portal.kernel.exception.SystemException,
            com.xebia.xifire.NoSuchSalaryException {
        return getPersistence().findByUserId(userId);
    }

    /**
    * Returns the salary where userId = &#63; or returns <code>null</code> if it could not be found. Uses the finder cache.
    *
    * @param userId the user ID
    * @return the matching salary, or <code>null</code> if a matching salary could not be found
    * @throws SystemException if a system exception occurred
    */
    public static com.xebia.xifire.model.Salary fetchByUserId(long userId)
        throws com.liferay.portal.kernel.exception.SystemException {
        return getPersistence().fetchByUserId(userId);
    }

    /**
    * Returns the salary where userId = &#63; or returns <code>null</code> if it could not be found, optionally using the finder cache.
    *
    * @param userId the user ID
    * @param retrieveFromCache whether to use the finder cache
    * @return the matching salary, or <code>null</code> if a matching salary could not be found
    * @throws SystemException if a system exception occurred
    */
    public static com.xebia.xifire.model.Salary fetchByUserId(long userId,
        boolean retrieveFromCache)
        throws com.liferay.portal.kernel.exception.SystemException {
        return getPersistence().fetchByUserId(userId, retrieveFromCache);
    }

    /**
    * Removes the salary where userId = &#63; from the database.
    *
    * @param userId the user ID
    * @return the salary that was removed
    * @throws SystemException if a system exception occurred
    */
    public static com.xebia.xifire.model.Salary removeByUserId(long userId)
        throws com.liferay.portal.kernel.exception.SystemException,
            com.xebia.xifire.NoSuchSalaryException {
        return getPersistence().removeByUserId(userId);
    }

    /**
    * Returns the number of salaries where userId = &#63;.
    *
    * @param userId the user ID
    * @return the number of matching salaries
    * @throws SystemException if a system exception occurred
    */
    public static int countByUserId(long userId)
        throws com.liferay.portal.kernel.exception.SystemException {
        return getPersistence().countByUserId(userId);
    }

    /**
    * Caches the salary in the entity cache if it is enabled.
    *
    * @param salary the salary
    */
    public static void cacheResult(com.xebia.xifire.model.Salary salary) {
        getPersistence().cacheResult(salary);
    }

    /**
    * Caches the salaries in the entity cache if it is enabled.
    *
    * @param salaries the salaries
    */
    public static void cacheResult(
        java.util.List<com.xebia.xifire.model.Salary> salaries) {
        getPersistence().cacheResult(salaries);
    }

    /**
    * Creates a new salary with the primary key. Does not add the salary to the database.
    *
    * @param id the primary key for the new salary
    * @return the new salary
    */
    public static com.xebia.xifire.model.Salary create(long id) {
        return getPersistence().create(id);
    }

    /**
    * Removes the salary with the primary key from the database. Also notifies the appropriate model listeners.
    *
    * @param id the primary key of the salary
    * @return the salary that was removed
    * @throws com.xebia.xifire.NoSuchSalaryException if a salary with the primary key could not be found
    * @throws SystemException if a system exception occurred
    */
    public static com.xebia.xifire.model.Salary remove(long id)
        throws com.liferay.portal.kernel.exception.SystemException,
            com.xebia.xifire.NoSuchSalaryException {
        return getPersistence().remove(id);
    }

    public static com.xebia.xifire.model.Salary updateImpl(
        com.xebia.xifire.model.Salary salary)
        throws com.liferay.portal.kernel.exception.SystemException {
        return getPersistence().updateImpl(salary);
    }

    /**
    * Returns the salary with the primary key or throws a {@link com.xebia.xifire.NoSuchSalaryException} if it could not be found.
    *
    * @param id the primary key of the salary
    * @return the salary
    * @throws com.xebia.xifire.NoSuchSalaryException if a salary with the primary key could not be found
    * @throws SystemException if a system exception occurred
    */
    public static com.xebia.xifire.model.Salary findByPrimaryKey(long id)
        throws com.liferay.portal.kernel.exception.SystemException,
            com.xebia.xifire.NoSuchSalaryException {
        return getPersistence().findByPrimaryKey(id);
    }

    /**
    * Returns the salary with the primary key or returns <code>null</code> if it could not be found.
    *
    * @param id the primary key of the salary
    * @return the salary, or <code>null</code> if a salary with the primary key could not be found
    * @throws SystemException if a system exception occurred
    */
    public static com.xebia.xifire.model.Salary fetchByPrimaryKey(long id)
        throws com.liferay.portal.kernel.exception.SystemException {
        return getPersistence().fetchByPrimaryKey(id);
    }

    /**
    * Returns all the salaries.
    *
    * @return the salaries
    * @throws SystemException if a system exception occurred
    */
    public static java.util.List<com.xebia.xifire.model.Salary> findAll()
        throws com.liferay.portal.kernel.exception.SystemException {
        return getPersistence().findAll();
    }

    /**
    * Returns a range of all the salaries.
    *
    * <p>
    * Useful when paginating results. Returns a maximum of <code>end - start</code> instances. <code>start</code> and <code>end</code> are not primary keys, they are indexes in the result set. Thus, <code>0</code> refers to the first result in the set. Setting both <code>start</code> and <code>end</code> to {@link com.liferay.portal.kernel.dao.orm.QueryUtil#ALL_POS} will return the full result set. If <code>orderByComparator</code> is specified, then the query will include the given ORDER BY logic. If <code>orderByComparator</code> is absent and pagination is required (<code>start</code> and <code>end</code> are not {@link com.liferay.portal.kernel.dao.orm.QueryUtil#ALL_POS}), then the query will include the default ORDER BY logic from {@link com.xebia.xifire.model.impl.SalaryModelImpl}. If both <code>orderByComparator</code> and pagination are absent, for performance reasons, the query will not have an ORDER BY clause and the returned result set will be sorted on by the primary key in an ascending order.
    * </p>
    *
    * @param start the lower bound of the range of salaries
    * @param end the upper bound of the range of salaries (not inclusive)
    * @return the range of salaries
    * @throws SystemException if a system exception occurred
    */
    public static java.util.List<com.xebia.xifire.model.Salary> findAll(
        int start, int end)
        throws com.liferay.portal.kernel.exception.SystemException {
        return getPersistence().findAll(start, end);
    }

    /**
    * Returns an ordered range of all the salaries.
    *
    * <p>
    * Useful when paginating results. Returns a maximum of <code>end - start</code> instances. <code>start</code> and <code>end</code> are not primary keys, they are indexes in the result set. Thus, <code>0</code> refers to the first result in the set. Setting both <code>start</code> and <code>end</code> to {@link com.liferay.portal.kernel.dao.orm.QueryUtil#ALL_POS} will return the full result set. If <code>orderByComparator</code> is specified, then the query will include the given ORDER BY logic. If <code>orderByComparator</code> is absent and pagination is required (<code>start</code> and <code>end</code> are not {@link com.liferay.portal.kernel.dao.orm.QueryUtil#ALL_POS}), then the query will include the default ORDER BY logic from {@link com.xebia.xifire.model.impl.SalaryModelImpl}. If both <code>orderByComparator</code> and pagination are absent, for performance reasons, the query will not have an ORDER BY clause and the returned result set will be sorted on by the primary key in an ascending order.
    * </p>
    *
    * @param start the lower bound of the range of salaries
    * @param end the upper bound of the range of salaries (not inclusive)
    * @param orderByComparator the comparator to order the results by (optionally <code>null</code>)
    * @return the ordered range of salaries
    * @throws SystemException if a system exception occurred
    */
    public static java.util.List<com.xebia.xifire.model.Salary> findAll(
        int start, int end,
        com.liferay.portal.kernel.util.OrderByComparator orderByComparator)
        throws com.liferay.portal.kernel.exception.SystemException {
        return getPersistence().findAll(start, end, orderByComparator);
    }

    /**
    * Removes all the salaries from the database.
    *
    * @throws SystemException if a system exception occurred
    */
    public static void removeAll()
        throws com.liferay.portal.kernel.exception.SystemException {
        getPersistence().removeAll();
    }

    /**
    * Returns the number of salaries.
    *
    * @return the number of salaries
    * @throws SystemException if a system exception occurred
    */
    public static int countAll()
        throws com.liferay.portal.kernel.exception.SystemException {
        return getPersistence().countAll();
    }

    public static SalaryPersistence getPersistence() {
        if (_persistence == null) {
            _persistence = (SalaryPersistence) PortletBeanLocatorUtil.locate(com.xebia.xifire.service.ClpSerializer.getServletContextName(),
                    SalaryPersistence.class.getName());

            ReferenceRegistry.registerReference(SalaryUtil.class, "_persistence");
        }

        return _persistence;
    }

    /**
     * @deprecated As of 6.2.0
     */
    public void setPersistence(SalaryPersistence persistence) {
    }
}
