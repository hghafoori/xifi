package com.xebia.xifire.service.persistence;

import com.liferay.portal.service.persistence.BasePersistence;

import com.xebia.xifire.model.EmployeeDetail;

/**
 * The persistence interface for the employee detail service.
 *
 * <p>
 * Caching information and settings can be found in <code>portal.properties</code>
 * </p>
 *
 * @author Brian Wing Shun Chan
 * @see EmployeeDetailPersistenceImpl
 * @see EmployeeDetailUtil
 * @generated
 */
public interface EmployeeDetailPersistence extends BasePersistence<EmployeeDetail> {
    /*
     * NOTE FOR DEVELOPERS:
     *
     * Never modify or reference this interface directly. Always use {@link EmployeeDetailUtil} to access the employee detail persistence. Modify <code>service.xml</code> and rerun ServiceBuilder to regenerate this interface.
     */

    /**
    * Returns the employee detail where userId = &#63; or throws a {@link com.xebia.xifire.NoSuchEmployeeDetailException} if it could not be found.
    *
    * @param userId the user ID
    * @return the matching employee detail
    * @throws com.xebia.xifire.NoSuchEmployeeDetailException if a matching employee detail could not be found
    * @throws SystemException if a system exception occurred
    */
    public com.xebia.xifire.model.EmployeeDetail findByUserId(long userId)
        throws com.liferay.portal.kernel.exception.SystemException,
            com.xebia.xifire.NoSuchEmployeeDetailException;

    /**
    * Returns the employee detail where userId = &#63; or returns <code>null</code> if it could not be found. Uses the finder cache.
    *
    * @param userId the user ID
    * @return the matching employee detail, or <code>null</code> if a matching employee detail could not be found
    * @throws SystemException if a system exception occurred
    */
    public com.xebia.xifire.model.EmployeeDetail fetchByUserId(long userId)
        throws com.liferay.portal.kernel.exception.SystemException;

    /**
    * Returns the employee detail where userId = &#63; or returns <code>null</code> if it could not be found, optionally using the finder cache.
    *
    * @param userId the user ID
    * @param retrieveFromCache whether to use the finder cache
    * @return the matching employee detail, or <code>null</code> if a matching employee detail could not be found
    * @throws SystemException if a system exception occurred
    */
    public com.xebia.xifire.model.EmployeeDetail fetchByUserId(long userId,
        boolean retrieveFromCache)
        throws com.liferay.portal.kernel.exception.SystemException;

    /**
    * Removes the employee detail where userId = &#63; from the database.
    *
    * @param userId the user ID
    * @return the employee detail that was removed
    * @throws SystemException if a system exception occurred
    */
    public com.xebia.xifire.model.EmployeeDetail removeByUserId(long userId)
        throws com.liferay.portal.kernel.exception.SystemException,
            com.xebia.xifire.NoSuchEmployeeDetailException;

    /**
    * Returns the number of employee details where userId = &#63;.
    *
    * @param userId the user ID
    * @return the number of matching employee details
    * @throws SystemException if a system exception occurred
    */
    public int countByUserId(long userId)
        throws com.liferay.portal.kernel.exception.SystemException;

    /**
    * Caches the employee detail in the entity cache if it is enabled.
    *
    * @param employeeDetail the employee detail
    */
    public void cacheResult(
        com.xebia.xifire.model.EmployeeDetail employeeDetail);

    /**
    * Caches the employee details in the entity cache if it is enabled.
    *
    * @param employeeDetails the employee details
    */
    public void cacheResult(
        java.util.List<com.xebia.xifire.model.EmployeeDetail> employeeDetails);

    /**
    * Creates a new employee detail with the primary key. Does not add the employee detail to the database.
    *
    * @param id the primary key for the new employee detail
    * @return the new employee detail
    */
    public com.xebia.xifire.model.EmployeeDetail create(long id);

    /**
    * Removes the employee detail with the primary key from the database. Also notifies the appropriate model listeners.
    *
    * @param id the primary key of the employee detail
    * @return the employee detail that was removed
    * @throws com.xebia.xifire.NoSuchEmployeeDetailException if a employee detail with the primary key could not be found
    * @throws SystemException if a system exception occurred
    */
    public com.xebia.xifire.model.EmployeeDetail remove(long id)
        throws com.liferay.portal.kernel.exception.SystemException,
            com.xebia.xifire.NoSuchEmployeeDetailException;

    public com.xebia.xifire.model.EmployeeDetail updateImpl(
        com.xebia.xifire.model.EmployeeDetail employeeDetail)
        throws com.liferay.portal.kernel.exception.SystemException;

    /**
    * Returns the employee detail with the primary key or throws a {@link com.xebia.xifire.NoSuchEmployeeDetailException} if it could not be found.
    *
    * @param id the primary key of the employee detail
    * @return the employee detail
    * @throws com.xebia.xifire.NoSuchEmployeeDetailException if a employee detail with the primary key could not be found
    * @throws SystemException if a system exception occurred
    */
    public com.xebia.xifire.model.EmployeeDetail findByPrimaryKey(long id)
        throws com.liferay.portal.kernel.exception.SystemException,
            com.xebia.xifire.NoSuchEmployeeDetailException;

    /**
    * Returns the employee detail with the primary key or returns <code>null</code> if it could not be found.
    *
    * @param id the primary key of the employee detail
    * @return the employee detail, or <code>null</code> if a employee detail with the primary key could not be found
    * @throws SystemException if a system exception occurred
    */
    public com.xebia.xifire.model.EmployeeDetail fetchByPrimaryKey(long id)
        throws com.liferay.portal.kernel.exception.SystemException;

    /**
    * Returns all the employee details.
    *
    * @return the employee details
    * @throws SystemException if a system exception occurred
    */
    public java.util.List<com.xebia.xifire.model.EmployeeDetail> findAll()
        throws com.liferay.portal.kernel.exception.SystemException;

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
    public java.util.List<com.xebia.xifire.model.EmployeeDetail> findAll(
        int start, int end)
        throws com.liferay.portal.kernel.exception.SystemException;

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
    public java.util.List<com.xebia.xifire.model.EmployeeDetail> findAll(
        int start, int end,
        com.liferay.portal.kernel.util.OrderByComparator orderByComparator)
        throws com.liferay.portal.kernel.exception.SystemException;

    /**
    * Removes all the employee details from the database.
    *
    * @throws SystemException if a system exception occurred
    */
    public void removeAll()
        throws com.liferay.portal.kernel.exception.SystemException;

    /**
    * Returns the number of employee details.
    *
    * @return the number of employee details
    * @throws SystemException if a system exception occurred
    */
    public int countAll()
        throws com.liferay.portal.kernel.exception.SystemException;
}
