package com.xebia.xifire.service.persistence;

import com.liferay.portal.kernel.bean.PortletBeanLocatorUtil;
import com.liferay.portal.kernel.dao.orm.DynamicQuery;
import com.liferay.portal.kernel.exception.SystemException;
import com.liferay.portal.kernel.util.OrderByComparator;
import com.liferay.portal.kernel.util.ReferenceRegistry;
import com.liferay.portal.service.ServiceContext;

import com.xebia.xifire.model.ReimbursementItem;

import java.util.List;

/**
 * The persistence utility for the reimbursement item service. This utility wraps {@link ReimbursementItemPersistenceImpl} and provides direct access to the database for CRUD operations. This utility should only be used by the service layer, as it must operate within a transaction. Never access this utility in a JSP, controller, model, or other front-end class.
 *
 * <p>
 * Caching information and settings can be found in <code>portal.properties</code>
 * </p>
 *
 * @author Brian Wing Shun Chan
 * @see ReimbursementItemPersistence
 * @see ReimbursementItemPersistenceImpl
 * @generated
 */
public class ReimbursementItemUtil {
    private static ReimbursementItemPersistence _persistence;

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
    public static void clearCache(ReimbursementItem reimbursementItem) {
        getPersistence().clearCache(reimbursementItem);
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
    public static List<ReimbursementItem> findWithDynamicQuery(
        DynamicQuery dynamicQuery) throws SystemException {
        return getPersistence().findWithDynamicQuery(dynamicQuery);
    }

    /**
     * @see com.liferay.portal.service.persistence.BasePersistence#findWithDynamicQuery(DynamicQuery, int, int)
     */
    public static List<ReimbursementItem> findWithDynamicQuery(
        DynamicQuery dynamicQuery, int start, int end)
        throws SystemException {
        return getPersistence().findWithDynamicQuery(dynamicQuery, start, end);
    }

    /**
     * @see com.liferay.portal.service.persistence.BasePersistence#findWithDynamicQuery(DynamicQuery, int, int, OrderByComparator)
     */
    public static List<ReimbursementItem> findWithDynamicQuery(
        DynamicQuery dynamicQuery, int start, int end,
        OrderByComparator orderByComparator) throws SystemException {
        return getPersistence()
                   .findWithDynamicQuery(dynamicQuery, start, end,
            orderByComparator);
    }

    /**
     * @see com.liferay.portal.service.persistence.BasePersistence#update(com.liferay.portal.model.BaseModel)
     */
    public static ReimbursementItem update(ReimbursementItem reimbursementItem)
        throws SystemException {
        return getPersistence().update(reimbursementItem);
    }

    /**
     * @see com.liferay.portal.service.persistence.BasePersistence#update(com.liferay.portal.model.BaseModel, ServiceContext)
     */
    public static ReimbursementItem update(
        ReimbursementItem reimbursementItem, ServiceContext serviceContext)
        throws SystemException {
        return getPersistence().update(reimbursementItem, serviceContext);
    }

    /**
    * Caches the reimbursement item in the entity cache if it is enabled.
    *
    * @param reimbursementItem the reimbursement item
    */
    public static void cacheResult(
        com.xebia.xifire.model.ReimbursementItem reimbursementItem) {
        getPersistence().cacheResult(reimbursementItem);
    }

    /**
    * Caches the reimbursement items in the entity cache if it is enabled.
    *
    * @param reimbursementItems the reimbursement items
    */
    public static void cacheResult(
        java.util.List<com.xebia.xifire.model.ReimbursementItem> reimbursementItems) {
        getPersistence().cacheResult(reimbursementItems);
    }

    /**
    * Creates a new reimbursement item with the primary key. Does not add the reimbursement item to the database.
    *
    * @param id the primary key for the new reimbursement item
    * @return the new reimbursement item
    */
    public static com.xebia.xifire.model.ReimbursementItem create(int id) {
        return getPersistence().create(id);
    }

    /**
    * Removes the reimbursement item with the primary key from the database. Also notifies the appropriate model listeners.
    *
    * @param id the primary key of the reimbursement item
    * @return the reimbursement item that was removed
    * @throws com.xebia.xifire.NoSuchReimbursementItemException if a reimbursement item with the primary key could not be found
    * @throws SystemException if a system exception occurred
    */
    public static com.xebia.xifire.model.ReimbursementItem remove(int id)
        throws com.liferay.portal.kernel.exception.SystemException,
            com.xebia.xifire.NoSuchReimbursementItemException {
        return getPersistence().remove(id);
    }

    public static com.xebia.xifire.model.ReimbursementItem updateImpl(
        com.xebia.xifire.model.ReimbursementItem reimbursementItem)
        throws com.liferay.portal.kernel.exception.SystemException {
        return getPersistence().updateImpl(reimbursementItem);
    }

    /**
    * Returns the reimbursement item with the primary key or throws a {@link com.xebia.xifire.NoSuchReimbursementItemException} if it could not be found.
    *
    * @param id the primary key of the reimbursement item
    * @return the reimbursement item
    * @throws com.xebia.xifire.NoSuchReimbursementItemException if a reimbursement item with the primary key could not be found
    * @throws SystemException if a system exception occurred
    */
    public static com.xebia.xifire.model.ReimbursementItem findByPrimaryKey(
        int id)
        throws com.liferay.portal.kernel.exception.SystemException,
            com.xebia.xifire.NoSuchReimbursementItemException {
        return getPersistence().findByPrimaryKey(id);
    }

    /**
    * Returns the reimbursement item with the primary key or returns <code>null</code> if it could not be found.
    *
    * @param id the primary key of the reimbursement item
    * @return the reimbursement item, or <code>null</code> if a reimbursement item with the primary key could not be found
    * @throws SystemException if a system exception occurred
    */
    public static com.xebia.xifire.model.ReimbursementItem fetchByPrimaryKey(
        int id) throws com.liferay.portal.kernel.exception.SystemException {
        return getPersistence().fetchByPrimaryKey(id);
    }

    /**
    * Returns all the reimbursement items.
    *
    * @return the reimbursement items
    * @throws SystemException if a system exception occurred
    */
    public static java.util.List<com.xebia.xifire.model.ReimbursementItem> findAll()
        throws com.liferay.portal.kernel.exception.SystemException {
        return getPersistence().findAll();
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
    public static java.util.List<com.xebia.xifire.model.ReimbursementItem> findAll(
        int start, int end)
        throws com.liferay.portal.kernel.exception.SystemException {
        return getPersistence().findAll(start, end);
    }

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
    public static java.util.List<com.xebia.xifire.model.ReimbursementItem> findAll(
        int start, int end,
        com.liferay.portal.kernel.util.OrderByComparator orderByComparator)
        throws com.liferay.portal.kernel.exception.SystemException {
        return getPersistence().findAll(start, end, orderByComparator);
    }

    /**
    * Removes all the reimbursement items from the database.
    *
    * @throws SystemException if a system exception occurred
    */
    public static void removeAll()
        throws com.liferay.portal.kernel.exception.SystemException {
        getPersistence().removeAll();
    }

    /**
    * Returns the number of reimbursement items.
    *
    * @return the number of reimbursement items
    * @throws SystemException if a system exception occurred
    */
    public static int countAll()
        throws com.liferay.portal.kernel.exception.SystemException {
        return getPersistence().countAll();
    }

    public static ReimbursementItemPersistence getPersistence() {
        if (_persistence == null) {
            _persistence = (ReimbursementItemPersistence) PortletBeanLocatorUtil.locate(com.xebia.xifire.service.ClpSerializer.getServletContextName(),
                    ReimbursementItemPersistence.class.getName());

            ReferenceRegistry.registerReference(ReimbursementItemUtil.class,
                "_persistence");
        }

        return _persistence;
    }

    /**
     * @deprecated As of 6.2.0
     */
    public void setPersistence(ReimbursementItemPersistence persistence) {
    }
}
