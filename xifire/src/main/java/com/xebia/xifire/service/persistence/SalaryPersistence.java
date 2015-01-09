package com.xebia.xifire.service.persistence;

import com.liferay.portal.service.persistence.BasePersistence;

import com.xebia.xifire.model.Salary;

/**
 * The persistence interface for the salary service.
 *
 * <p>
 * Caching information and settings can be found in <code>portal.properties</code>
 * </p>
 *
 * @author Brian Wing Shun Chan
 * @see SalaryPersistenceImpl
 * @see SalaryUtil
 * @generated
 */
public interface SalaryPersistence extends BasePersistence<Salary> {
    /*
     * NOTE FOR DEVELOPERS:
     *
     * Never modify or reference this interface directly. Always use {@link SalaryUtil} to access the salary persistence. Modify <code>service.xml</code> and rerun ServiceBuilder to regenerate this interface.
     */

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
    public com.xebia.xifire.model.Salary findByUserIdMonthAndYear(int userId,
        int salaryMonth, int salaryYear)
        throws com.liferay.portal.kernel.exception.SystemException,
            com.xebia.xifire.NoSuchSalaryException;

    /**
    * Returns the salary where userId = &#63; and salaryMonth = &#63; and salaryYear = &#63; or returns <code>null</code> if it could not be found. Uses the finder cache.
    *
    * @param userId the user ID
    * @param salaryMonth the salary month
    * @param salaryYear the salary year
    * @return the matching salary, or <code>null</code> if a matching salary could not be found
    * @throws SystemException if a system exception occurred
    */
    public com.xebia.xifire.model.Salary fetchByUserIdMonthAndYear(int userId,
        int salaryMonth, int salaryYear)
        throws com.liferay.portal.kernel.exception.SystemException;

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
    public com.xebia.xifire.model.Salary fetchByUserIdMonthAndYear(int userId,
        int salaryMonth, int salaryYear, boolean retrieveFromCache)
        throws com.liferay.portal.kernel.exception.SystemException;

    /**
    * Removes the salary where userId = &#63; and salaryMonth = &#63; and salaryYear = &#63; from the database.
    *
    * @param userId the user ID
    * @param salaryMonth the salary month
    * @param salaryYear the salary year
    * @return the salary that was removed
    * @throws SystemException if a system exception occurred
    */
    public com.xebia.xifire.model.Salary removeByUserIdMonthAndYear(
        int userId, int salaryMonth, int salaryYear)
        throws com.liferay.portal.kernel.exception.SystemException,
            com.xebia.xifire.NoSuchSalaryException;

    /**
    * Returns the number of salaries where userId = &#63; and salaryMonth = &#63; and salaryYear = &#63;.
    *
    * @param userId the user ID
    * @param salaryMonth the salary month
    * @param salaryYear the salary year
    * @return the number of matching salaries
    * @throws SystemException if a system exception occurred
    */
    public int countByUserIdMonthAndYear(int userId, int salaryMonth,
        int salaryYear)
        throws com.liferay.portal.kernel.exception.SystemException;

    /**
    * Returns the salary where userId = &#63; and salaryYear = &#63; or throws a {@link com.xebia.xifire.NoSuchSalaryException} if it could not be found.
    *
    * @param userId the user ID
    * @param salaryYear the salary year
    * @return the matching salary
    * @throws com.xebia.xifire.NoSuchSalaryException if a matching salary could not be found
    * @throws SystemException if a system exception occurred
    */
    public com.xebia.xifire.model.Salary findByUserIdYear(int userId,
        int salaryYear)
        throws com.liferay.portal.kernel.exception.SystemException,
            com.xebia.xifire.NoSuchSalaryException;

    /**
    * Returns the salary where userId = &#63; and salaryYear = &#63; or returns <code>null</code> if it could not be found. Uses the finder cache.
    *
    * @param userId the user ID
    * @param salaryYear the salary year
    * @return the matching salary, or <code>null</code> if a matching salary could not be found
    * @throws SystemException if a system exception occurred
    */
    public com.xebia.xifire.model.Salary fetchByUserIdYear(int userId,
        int salaryYear)
        throws com.liferay.portal.kernel.exception.SystemException;

    /**
    * Returns the salary where userId = &#63; and salaryYear = &#63; or returns <code>null</code> if it could not be found, optionally using the finder cache.
    *
    * @param userId the user ID
    * @param salaryYear the salary year
    * @param retrieveFromCache whether to use the finder cache
    * @return the matching salary, or <code>null</code> if a matching salary could not be found
    * @throws SystemException if a system exception occurred
    */
    public com.xebia.xifire.model.Salary fetchByUserIdYear(int userId,
        int salaryYear, boolean retrieveFromCache)
        throws com.liferay.portal.kernel.exception.SystemException;

    /**
    * Removes the salary where userId = &#63; and salaryYear = &#63; from the database.
    *
    * @param userId the user ID
    * @param salaryYear the salary year
    * @return the salary that was removed
    * @throws SystemException if a system exception occurred
    */
    public com.xebia.xifire.model.Salary removeByUserIdYear(int userId,
        int salaryYear)
        throws com.liferay.portal.kernel.exception.SystemException,
            com.xebia.xifire.NoSuchSalaryException;

    /**
    * Returns the number of salaries where userId = &#63; and salaryYear = &#63;.
    *
    * @param userId the user ID
    * @param salaryYear the salary year
    * @return the number of matching salaries
    * @throws SystemException if a system exception occurred
    */
    public int countByUserIdYear(int userId, int salaryYear)
        throws com.liferay.portal.kernel.exception.SystemException;

    /**
    * Returns the salary where userId = &#63; or throws a {@link com.xebia.xifire.NoSuchSalaryException} if it could not be found.
    *
    * @param userId the user ID
    * @return the matching salary
    * @throws com.xebia.xifire.NoSuchSalaryException if a matching salary could not be found
    * @throws SystemException if a system exception occurred
    */
    public com.xebia.xifire.model.Salary findByUserId(int userId)
        throws com.liferay.portal.kernel.exception.SystemException,
            com.xebia.xifire.NoSuchSalaryException;

    /**
    * Returns the salary where userId = &#63; or returns <code>null</code> if it could not be found. Uses the finder cache.
    *
    * @param userId the user ID
    * @return the matching salary, or <code>null</code> if a matching salary could not be found
    * @throws SystemException if a system exception occurred
    */
    public com.xebia.xifire.model.Salary fetchByUserId(int userId)
        throws com.liferay.portal.kernel.exception.SystemException;

    /**
    * Returns the salary where userId = &#63; or returns <code>null</code> if it could not be found, optionally using the finder cache.
    *
    * @param userId the user ID
    * @param retrieveFromCache whether to use the finder cache
    * @return the matching salary, or <code>null</code> if a matching salary could not be found
    * @throws SystemException if a system exception occurred
    */
    public com.xebia.xifire.model.Salary fetchByUserId(int userId,
        boolean retrieveFromCache)
        throws com.liferay.portal.kernel.exception.SystemException;

    /**
    * Removes the salary where userId = &#63; from the database.
    *
    * @param userId the user ID
    * @return the salary that was removed
    * @throws SystemException if a system exception occurred
    */
    public com.xebia.xifire.model.Salary removeByUserId(int userId)
        throws com.liferay.portal.kernel.exception.SystemException,
            com.xebia.xifire.NoSuchSalaryException;

    /**
    * Returns the number of salaries where userId = &#63;.
    *
    * @param userId the user ID
    * @return the number of matching salaries
    * @throws SystemException if a system exception occurred
    */
    public int countByUserId(int userId)
        throws com.liferay.portal.kernel.exception.SystemException;

    /**
    * Caches the salary in the entity cache if it is enabled.
    *
    * @param salary the salary
    */
    public void cacheResult(com.xebia.xifire.model.Salary salary);

    /**
    * Caches the salaries in the entity cache if it is enabled.
    *
    * @param salaries the salaries
    */
    public void cacheResult(
        java.util.List<com.xebia.xifire.model.Salary> salaries);

    /**
    * Creates a new salary with the primary key. Does not add the salary to the database.
    *
    * @param id the primary key for the new salary
    * @return the new salary
    */
    public com.xebia.xifire.model.Salary create(int id);

    /**
    * Removes the salary with the primary key from the database. Also notifies the appropriate model listeners.
    *
    * @param id the primary key of the salary
    * @return the salary that was removed
    * @throws com.xebia.xifire.NoSuchSalaryException if a salary with the primary key could not be found
    * @throws SystemException if a system exception occurred
    */
    public com.xebia.xifire.model.Salary remove(int id)
        throws com.liferay.portal.kernel.exception.SystemException,
            com.xebia.xifire.NoSuchSalaryException;

    public com.xebia.xifire.model.Salary updateImpl(
        com.xebia.xifire.model.Salary salary)
        throws com.liferay.portal.kernel.exception.SystemException;

    /**
    * Returns the salary with the primary key or throws a {@link com.xebia.xifire.NoSuchSalaryException} if it could not be found.
    *
    * @param id the primary key of the salary
    * @return the salary
    * @throws com.xebia.xifire.NoSuchSalaryException if a salary with the primary key could not be found
    * @throws SystemException if a system exception occurred
    */
    public com.xebia.xifire.model.Salary findByPrimaryKey(int id)
        throws com.liferay.portal.kernel.exception.SystemException,
            com.xebia.xifire.NoSuchSalaryException;

    /**
    * Returns the salary with the primary key or returns <code>null</code> if it could not be found.
    *
    * @param id the primary key of the salary
    * @return the salary, or <code>null</code> if a salary with the primary key could not be found
    * @throws SystemException if a system exception occurred
    */
    public com.xebia.xifire.model.Salary fetchByPrimaryKey(int id)
        throws com.liferay.portal.kernel.exception.SystemException;

    /**
    * Returns all the salaries.
    *
    * @return the salaries
    * @throws SystemException if a system exception occurred
    */
    public java.util.List<com.xebia.xifire.model.Salary> findAll()
        throws com.liferay.portal.kernel.exception.SystemException;

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
    public java.util.List<com.xebia.xifire.model.Salary> findAll(int start,
        int end) throws com.liferay.portal.kernel.exception.SystemException;

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
    public java.util.List<com.xebia.xifire.model.Salary> findAll(int start,
        int end,
        com.liferay.portal.kernel.util.OrderByComparator orderByComparator)
        throws com.liferay.portal.kernel.exception.SystemException;

    /**
    * Removes all the salaries from the database.
    *
    * @throws SystemException if a system exception occurred
    */
    public void removeAll()
        throws com.liferay.portal.kernel.exception.SystemException;

    /**
    * Returns the number of salaries.
    *
    * @return the number of salaries
    * @throws SystemException if a system exception occurred
    */
    public int countAll()
        throws com.liferay.portal.kernel.exception.SystemException;
}
