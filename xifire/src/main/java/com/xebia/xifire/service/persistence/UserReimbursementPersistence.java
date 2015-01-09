package com.xebia.xifire.service.persistence;

import com.liferay.portal.service.persistence.BasePersistence;

import com.xebia.xifire.model.UserReimbursement;

/**
 * The persistence interface for the user reimbursement service.
 *
 * <p>
 * Caching information and settings can be found in <code>portal.properties</code>
 * </p>
 *
 * @author Brian Wing Shun Chan
 * @see UserReimbursementPersistenceImpl
 * @see UserReimbursementUtil
 * @generated
 */
public interface UserReimbursementPersistence extends BasePersistence<UserReimbursement> {
    /*
     * NOTE FOR DEVELOPERS:
     *
     * Never modify or reference this interface directly. Always use {@link UserReimbursementUtil} to access the user reimbursement persistence. Modify <code>service.xml</code> and rerun ServiceBuilder to regenerate this interface.
     */

    /**
    * Returns the user reimbursement where userId = &#63; or throws a {@link com.xebia.xifire.NoSuchUserReimbursementException} if it could not be found.
    *
    * @param userId the user ID
    * @return the matching user reimbursement
    * @throws com.xebia.xifire.NoSuchUserReimbursementException if a matching user reimbursement could not be found
    * @throws SystemException if a system exception occurred
    */
    public com.xebia.xifire.model.UserReimbursement findByUserId(int userId)
        throws com.liferay.portal.kernel.exception.SystemException,
            com.xebia.xifire.NoSuchUserReimbursementException;

    /**
    * Returns the user reimbursement where userId = &#63; or returns <code>null</code> if it could not be found. Uses the finder cache.
    *
    * @param userId the user ID
    * @return the matching user reimbursement, or <code>null</code> if a matching user reimbursement could not be found
    * @throws SystemException if a system exception occurred
    */
    public com.xebia.xifire.model.UserReimbursement fetchByUserId(int userId)
        throws com.liferay.portal.kernel.exception.SystemException;

    /**
    * Returns the user reimbursement where userId = &#63; or returns <code>null</code> if it could not be found, optionally using the finder cache.
    *
    * @param userId the user ID
    * @param retrieveFromCache whether to use the finder cache
    * @return the matching user reimbursement, or <code>null</code> if a matching user reimbursement could not be found
    * @throws SystemException if a system exception occurred
    */
    public com.xebia.xifire.model.UserReimbursement fetchByUserId(int userId,
        boolean retrieveFromCache)
        throws com.liferay.portal.kernel.exception.SystemException;

    /**
    * Removes the user reimbursement where userId = &#63; from the database.
    *
    * @param userId the user ID
    * @return the user reimbursement that was removed
    * @throws SystemException if a system exception occurred
    */
    public com.xebia.xifire.model.UserReimbursement removeByUserId(int userId)
        throws com.liferay.portal.kernel.exception.SystemException,
            com.xebia.xifire.NoSuchUserReimbursementException;

    /**
    * Returns the number of user reimbursements where userId = &#63;.
    *
    * @param userId the user ID
    * @return the number of matching user reimbursements
    * @throws SystemException if a system exception occurred
    */
    public int countByUserId(int userId)
        throws com.liferay.portal.kernel.exception.SystemException;

    /**
    * Caches the user reimbursement in the entity cache if it is enabled.
    *
    * @param userReimbursement the user reimbursement
    */
    public void cacheResult(
        com.xebia.xifire.model.UserReimbursement userReimbursement);

    /**
    * Caches the user reimbursements in the entity cache if it is enabled.
    *
    * @param userReimbursements the user reimbursements
    */
    public void cacheResult(
        java.util.List<com.xebia.xifire.model.UserReimbursement> userReimbursements);

    /**
    * Creates a new user reimbursement with the primary key. Does not add the user reimbursement to the database.
    *
    * @param id the primary key for the new user reimbursement
    * @return the new user reimbursement
    */
    public com.xebia.xifire.model.UserReimbursement create(int id);

    /**
    * Removes the user reimbursement with the primary key from the database. Also notifies the appropriate model listeners.
    *
    * @param id the primary key of the user reimbursement
    * @return the user reimbursement that was removed
    * @throws com.xebia.xifire.NoSuchUserReimbursementException if a user reimbursement with the primary key could not be found
    * @throws SystemException if a system exception occurred
    */
    public com.xebia.xifire.model.UserReimbursement remove(int id)
        throws com.liferay.portal.kernel.exception.SystemException,
            com.xebia.xifire.NoSuchUserReimbursementException;

    public com.xebia.xifire.model.UserReimbursement updateImpl(
        com.xebia.xifire.model.UserReimbursement userReimbursement)
        throws com.liferay.portal.kernel.exception.SystemException;

    /**
    * Returns the user reimbursement with the primary key or throws a {@link com.xebia.xifire.NoSuchUserReimbursementException} if it could not be found.
    *
    * @param id the primary key of the user reimbursement
    * @return the user reimbursement
    * @throws com.xebia.xifire.NoSuchUserReimbursementException if a user reimbursement with the primary key could not be found
    * @throws SystemException if a system exception occurred
    */
    public com.xebia.xifire.model.UserReimbursement findByPrimaryKey(int id)
        throws com.liferay.portal.kernel.exception.SystemException,
            com.xebia.xifire.NoSuchUserReimbursementException;

    /**
    * Returns the user reimbursement with the primary key or returns <code>null</code> if it could not be found.
    *
    * @param id the primary key of the user reimbursement
    * @return the user reimbursement, or <code>null</code> if a user reimbursement with the primary key could not be found
    * @throws SystemException if a system exception occurred
    */
    public com.xebia.xifire.model.UserReimbursement fetchByPrimaryKey(int id)
        throws com.liferay.portal.kernel.exception.SystemException;

    /**
    * Returns all the user reimbursements.
    *
    * @return the user reimbursements
    * @throws SystemException if a system exception occurred
    */
    public java.util.List<com.xebia.xifire.model.UserReimbursement> findAll()
        throws com.liferay.portal.kernel.exception.SystemException;

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
    public java.util.List<com.xebia.xifire.model.UserReimbursement> findAll(
        int start, int end)
        throws com.liferay.portal.kernel.exception.SystemException;

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
    public java.util.List<com.xebia.xifire.model.UserReimbursement> findAll(
        int start, int end,
        com.liferay.portal.kernel.util.OrderByComparator orderByComparator)
        throws com.liferay.portal.kernel.exception.SystemException;

    /**
    * Removes all the user reimbursements from the database.
    *
    * @throws SystemException if a system exception occurred
    */
    public void removeAll()
        throws com.liferay.portal.kernel.exception.SystemException;

    /**
    * Returns the number of user reimbursements.
    *
    * @return the number of user reimbursements
    * @throws SystemException if a system exception occurred
    */
    public int countAll()
        throws com.liferay.portal.kernel.exception.SystemException;
}
