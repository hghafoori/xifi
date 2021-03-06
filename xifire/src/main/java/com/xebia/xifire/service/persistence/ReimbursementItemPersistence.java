package com.xebia.xifire.service.persistence;

import com.liferay.portal.service.persistence.BasePersistence;

import com.xebia.xifire.model.ReimbursementItem;

/**
 * The persistence interface for the reimbursement item service.
 *
 * <p>
 * Caching information and settings can be found in <code>portal.properties</code>
 * </p>
 *
 * @author Brian Wing Shun Chan
 * @see ReimbursementItemPersistenceImpl
 * @see ReimbursementItemUtil
 * @generated
 */
public interface ReimbursementItemPersistence extends BasePersistence<ReimbursementItem> {
    /*
     * NOTE FOR DEVELOPERS:
     *
     * Never modify or reference this interface directly. Always use {@link ReimbursementItemUtil} to access the reimbursement item persistence. Modify <code>service.xml</code> and rerun ServiceBuilder to regenerate this interface.
     */

    /**
    * Caches the reimbursement item in the entity cache if it is enabled.
    *
    * @param reimbursementItem the reimbursement item
    */
    public void cacheResult(
        com.xebia.xifire.model.ReimbursementItem reimbursementItem);

    /**
    * Caches the reimbursement items in the entity cache if it is enabled.
    *
    * @param reimbursementItems the reimbursement items
    */
    public void cacheResult(
        java.util.List<com.xebia.xifire.model.ReimbursementItem> reimbursementItems);

    /**
    * Creates a new reimbursement item with the primary key. Does not add the reimbursement item to the database.
    *
    * @param id the primary key for the new reimbursement item
    * @return the new reimbursement item
    */
    public com.xebia.xifire.model.ReimbursementItem create(long id);

    /**
    * Removes the reimbursement item with the primary key from the database. Also notifies the appropriate model listeners.
    *
    * @param id the primary key of the reimbursement item
    * @return the reimbursement item that was removed
    * @throws com.xebia.xifire.NoSuchReimbursementItemException if a reimbursement item with the primary key could not be found
    * @throws SystemException if a system exception occurred
    */
    public com.xebia.xifire.model.ReimbursementItem remove(long id)
        throws com.liferay.portal.kernel.exception.SystemException,
            com.xebia.xifire.NoSuchReimbursementItemException;

    public com.xebia.xifire.model.ReimbursementItem updateImpl(
        com.xebia.xifire.model.ReimbursementItem reimbursementItem)
        throws com.liferay.portal.kernel.exception.SystemException;

    /**
    * Returns the reimbursement item with the primary key or throws a {@link com.xebia.xifire.NoSuchReimbursementItemException} if it could not be found.
    *
    * @param id the primary key of the reimbursement item
    * @return the reimbursement item
    * @throws com.xebia.xifire.NoSuchReimbursementItemException if a reimbursement item with the primary key could not be found
    * @throws SystemException if a system exception occurred
    */
    public com.xebia.xifire.model.ReimbursementItem findByPrimaryKey(long id)
        throws com.liferay.portal.kernel.exception.SystemException,
            com.xebia.xifire.NoSuchReimbursementItemException;

    /**
    * Returns the reimbursement item with the primary key or returns <code>null</code> if it could not be found.
    *
    * @param id the primary key of the reimbursement item
    * @return the reimbursement item, or <code>null</code> if a reimbursement item with the primary key could not be found
    * @throws SystemException if a system exception occurred
    */
    public com.xebia.xifire.model.ReimbursementItem fetchByPrimaryKey(long id)
        throws com.liferay.portal.kernel.exception.SystemException;

    /**
    * Returns all the reimbursement items.
    *
    * @return the reimbursement items
    * @throws SystemException if a system exception occurred
    */
    public java.util.List<com.xebia.xifire.model.ReimbursementItem> findAll()
        throws com.liferay.portal.kernel.exception.SystemException;

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
    public java.util.List<com.xebia.xifire.model.ReimbursementItem> findAll(
        int start, int end)
        throws com.liferay.portal.kernel.exception.SystemException;

    /**
    * Returns an ordered range of all the reimbursement items.
    *
    * <p>
    * Useful when paginating results. Returns a maximum of <code>end - start</code> instances. <code>start</code> and <code>end</code> are not primary keys, they are indexes in the result set. Thus, <code>0</code> refers to the first result in the set. Setting both <code>start</code> and <code>end</code> to {@link com.liferay.portal.kernel.dao.orm.QueryUtil#ALL_POS} will return the full result set. If <code>orderByComparator</code> is specified, then the query will include the given ORDER BY logic. If <code>orderByComparator</code> is absent and pagination is required (<code>start</code> and <code>end</code> are not {@link com.liferay.portal.kernel.dao.orm.QueryUtil#ALL_POS}), then the query will include the default ORDER BY logic from {@link com.xebia.xifire.model.impl.ReimbursementItemModelImpl}. If both <code>orderByComparator</code> and pagination are absent, for performance reasons, the query will not have an ORDER BY clause and the returned result set will be sorted on by the primary key in an ascending order.
    * </p>
    *
    * @param start the lower bound of the range of reimbursement items
    * @param end the upper bound of the range of reimbursement items (not inclusive)
    * @param orderByComparator the comparator to order the results by (optionally <code>null</code>)
    * @return the ordered range of reimbursement items
    * @throws SystemException if a system exception occurred
    */
    public java.util.List<com.xebia.xifire.model.ReimbursementItem> findAll(
        int start, int end,
        com.liferay.portal.kernel.util.OrderByComparator orderByComparator)
        throws com.liferay.portal.kernel.exception.SystemException;

    /**
    * Removes all the reimbursement items from the database.
    *
    * @throws SystemException if a system exception occurred
    */
    public void removeAll()
        throws com.liferay.portal.kernel.exception.SystemException;

    /**
    * Returns the number of reimbursement items.
    *
    * @return the number of reimbursement items
    * @throws SystemException if a system exception occurred
    */
    public int countAll()
        throws com.liferay.portal.kernel.exception.SystemException;
}
