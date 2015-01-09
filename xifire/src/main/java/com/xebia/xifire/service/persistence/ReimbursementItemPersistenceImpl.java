package com.xebia.xifire.service.persistence;

import com.liferay.portal.kernel.cache.CacheRegistryUtil;
import com.liferay.portal.kernel.dao.orm.EntityCacheUtil;
import com.liferay.portal.kernel.dao.orm.FinderCacheUtil;
import com.liferay.portal.kernel.dao.orm.FinderPath;
import com.liferay.portal.kernel.dao.orm.Query;
import com.liferay.portal.kernel.dao.orm.QueryUtil;
import com.liferay.portal.kernel.dao.orm.Session;
import com.liferay.portal.kernel.exception.SystemException;
import com.liferay.portal.kernel.log.Log;
import com.liferay.portal.kernel.log.LogFactoryUtil;
import com.liferay.portal.kernel.util.GetterUtil;
import com.liferay.portal.kernel.util.InstanceFactory;
import com.liferay.portal.kernel.util.OrderByComparator;
import com.liferay.portal.kernel.util.PropsKeys;
import com.liferay.portal.kernel.util.PropsUtil;
import com.liferay.portal.kernel.util.SetUtil;
import com.liferay.portal.kernel.util.StringBundler;
import com.liferay.portal.kernel.util.StringUtil;
import com.liferay.portal.kernel.util.UnmodifiableList;
import com.liferay.portal.model.CacheModel;
import com.liferay.portal.model.ModelListener;
import com.liferay.portal.service.persistence.impl.BasePersistenceImpl;

import com.xebia.xifire.NoSuchReimbursementItemException;
import com.xebia.xifire.model.ReimbursementItem;
import com.xebia.xifire.model.impl.ReimbursementItemImpl;
import com.xebia.xifire.model.impl.ReimbursementItemModelImpl;
import com.xebia.xifire.service.persistence.ReimbursementItemPersistence;

import java.io.Serializable;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Set;

/**
 * The persistence implementation for the reimbursement item service.
 *
 * <p>
 * Caching information and settings can be found in <code>portal.properties</code>
 * </p>
 *
 * @author Brian Wing Shun Chan
 * @see ReimbursementItemPersistence
 * @see ReimbursementItemUtil
 * @generated
 */
public class ReimbursementItemPersistenceImpl extends BasePersistenceImpl<ReimbursementItem>
    implements ReimbursementItemPersistence {
    /*
     * NOTE FOR DEVELOPERS:
     *
     * Never modify or reference this class directly. Always use {@link ReimbursementItemUtil} to access the reimbursement item persistence. Modify <code>service.xml</code> and rerun ServiceBuilder to regenerate this class.
     */
    public static final String FINDER_CLASS_NAME_ENTITY = ReimbursementItemImpl.class.getName();
    public static final String FINDER_CLASS_NAME_LIST_WITH_PAGINATION = FINDER_CLASS_NAME_ENTITY +
        ".List1";
    public static final String FINDER_CLASS_NAME_LIST_WITHOUT_PAGINATION = FINDER_CLASS_NAME_ENTITY +
        ".List2";
    public static final FinderPath FINDER_PATH_WITH_PAGINATION_FIND_ALL = new FinderPath(ReimbursementItemModelImpl.ENTITY_CACHE_ENABLED,
            ReimbursementItemModelImpl.FINDER_CACHE_ENABLED,
            ReimbursementItemImpl.class,
            FINDER_CLASS_NAME_LIST_WITH_PAGINATION, "findAll", new String[0]);
    public static final FinderPath FINDER_PATH_WITHOUT_PAGINATION_FIND_ALL = new FinderPath(ReimbursementItemModelImpl.ENTITY_CACHE_ENABLED,
            ReimbursementItemModelImpl.FINDER_CACHE_ENABLED,
            ReimbursementItemImpl.class,
            FINDER_CLASS_NAME_LIST_WITHOUT_PAGINATION, "findAll", new String[0]);
    public static final FinderPath FINDER_PATH_COUNT_ALL = new FinderPath(ReimbursementItemModelImpl.ENTITY_CACHE_ENABLED,
            ReimbursementItemModelImpl.FINDER_CACHE_ENABLED, Long.class,
            FINDER_CLASS_NAME_LIST_WITHOUT_PAGINATION, "countAll", new String[0]);
    private static final String _SQL_SELECT_REIMBURSEMENTITEM = "SELECT reimbursementItem FROM ReimbursementItem reimbursementItem";
    private static final String _SQL_COUNT_REIMBURSEMENTITEM = "SELECT COUNT(reimbursementItem) FROM ReimbursementItem reimbursementItem";
    private static final String _ORDER_BY_ENTITY_ALIAS = "reimbursementItem.";
    private static final String _NO_SUCH_ENTITY_WITH_PRIMARY_KEY = "No ReimbursementItem exists with the primary key ";
    private static final boolean _HIBERNATE_CACHE_USE_SECOND_LEVEL_CACHE = GetterUtil.getBoolean(PropsUtil.get(
                PropsKeys.HIBERNATE_CACHE_USE_SECOND_LEVEL_CACHE));
    private static Log _log = LogFactoryUtil.getLog(ReimbursementItemPersistenceImpl.class);
    private static Set<String> _badColumnNames = SetUtil.fromArray(new String[] {
                "id"
            });
    private static ReimbursementItem _nullReimbursementItem = new ReimbursementItemImpl() {
            @Override
            public Object clone() {
                return this;
            }

            @Override
            public CacheModel<ReimbursementItem> toCacheModel() {
                return _nullReimbursementItemCacheModel;
            }
        };

    private static CacheModel<ReimbursementItem> _nullReimbursementItemCacheModel =
        new CacheModel<ReimbursementItem>() {
            @Override
            public ReimbursementItem toEntityModel() {
                return _nullReimbursementItem;
            }
        };

    public ReimbursementItemPersistenceImpl() {
        setModelClass(ReimbursementItem.class);
    }

    /**
     * Caches the reimbursement item in the entity cache if it is enabled.
     *
     * @param reimbursementItem the reimbursement item
     */
    @Override
    public void cacheResult(ReimbursementItem reimbursementItem) {
        EntityCacheUtil.putResult(ReimbursementItemModelImpl.ENTITY_CACHE_ENABLED,
            ReimbursementItemImpl.class, reimbursementItem.getPrimaryKey(),
            reimbursementItem);

        reimbursementItem.resetOriginalValues();
    }

    /**
     * Caches the reimbursement items in the entity cache if it is enabled.
     *
     * @param reimbursementItems the reimbursement items
     */
    @Override
    public void cacheResult(List<ReimbursementItem> reimbursementItems) {
        for (ReimbursementItem reimbursementItem : reimbursementItems) {
            if (EntityCacheUtil.getResult(
                        ReimbursementItemModelImpl.ENTITY_CACHE_ENABLED,
                        ReimbursementItemImpl.class,
                        reimbursementItem.getPrimaryKey()) == null) {
                cacheResult(reimbursementItem);
            } else {
                reimbursementItem.resetOriginalValues();
            }
        }
    }

    /**
     * Clears the cache for all reimbursement items.
     *
     * <p>
     * The {@link com.liferay.portal.kernel.dao.orm.EntityCache} and {@link com.liferay.portal.kernel.dao.orm.FinderCache} are both cleared by this method.
     * </p>
     */
    @Override
    public void clearCache() {
        if (_HIBERNATE_CACHE_USE_SECOND_LEVEL_CACHE) {
            CacheRegistryUtil.clear(ReimbursementItemImpl.class.getName());
        }

        EntityCacheUtil.clearCache(ReimbursementItemImpl.class.getName());

        FinderCacheUtil.clearCache(FINDER_CLASS_NAME_ENTITY);
        FinderCacheUtil.clearCache(FINDER_CLASS_NAME_LIST_WITH_PAGINATION);
        FinderCacheUtil.clearCache(FINDER_CLASS_NAME_LIST_WITHOUT_PAGINATION);
    }

    /**
     * Clears the cache for the reimbursement item.
     *
     * <p>
     * The {@link com.liferay.portal.kernel.dao.orm.EntityCache} and {@link com.liferay.portal.kernel.dao.orm.FinderCache} are both cleared by this method.
     * </p>
     */
    @Override
    public void clearCache(ReimbursementItem reimbursementItem) {
        EntityCacheUtil.removeResult(ReimbursementItemModelImpl.ENTITY_CACHE_ENABLED,
            ReimbursementItemImpl.class, reimbursementItem.getPrimaryKey());

        FinderCacheUtil.clearCache(FINDER_CLASS_NAME_LIST_WITH_PAGINATION);
        FinderCacheUtil.clearCache(FINDER_CLASS_NAME_LIST_WITHOUT_PAGINATION);
    }

    @Override
    public void clearCache(List<ReimbursementItem> reimbursementItems) {
        FinderCacheUtil.clearCache(FINDER_CLASS_NAME_LIST_WITH_PAGINATION);
        FinderCacheUtil.clearCache(FINDER_CLASS_NAME_LIST_WITHOUT_PAGINATION);

        for (ReimbursementItem reimbursementItem : reimbursementItems) {
            EntityCacheUtil.removeResult(ReimbursementItemModelImpl.ENTITY_CACHE_ENABLED,
                ReimbursementItemImpl.class, reimbursementItem.getPrimaryKey());
        }
    }

    /**
     * Creates a new reimbursement item with the primary key. Does not add the reimbursement item to the database.
     *
     * @param id the primary key for the new reimbursement item
     * @return the new reimbursement item
     */
    @Override
    public ReimbursementItem create(long id) {
        ReimbursementItem reimbursementItem = new ReimbursementItemImpl();

        reimbursementItem.setNew(true);
        reimbursementItem.setPrimaryKey(id);

        return reimbursementItem;
    }

    /**
     * Removes the reimbursement item with the primary key from the database. Also notifies the appropriate model listeners.
     *
     * @param id the primary key of the reimbursement item
     * @return the reimbursement item that was removed
     * @throws com.xebia.xifire.NoSuchReimbursementItemException if a reimbursement item with the primary key could not be found
     * @throws SystemException if a system exception occurred
     */
    @Override
    public ReimbursementItem remove(long id)
        throws NoSuchReimbursementItemException, SystemException {
        return remove((Serializable) id);
    }

    /**
     * Removes the reimbursement item with the primary key from the database. Also notifies the appropriate model listeners.
     *
     * @param primaryKey the primary key of the reimbursement item
     * @return the reimbursement item that was removed
     * @throws com.xebia.xifire.NoSuchReimbursementItemException if a reimbursement item with the primary key could not be found
     * @throws SystemException if a system exception occurred
     */
    @Override
    public ReimbursementItem remove(Serializable primaryKey)
        throws NoSuchReimbursementItemException, SystemException {
        Session session = null;

        try {
            session = openSession();

            ReimbursementItem reimbursementItem = (ReimbursementItem) session.get(ReimbursementItemImpl.class,
                    primaryKey);

            if (reimbursementItem == null) {
                if (_log.isWarnEnabled()) {
                    _log.warn(_NO_SUCH_ENTITY_WITH_PRIMARY_KEY + primaryKey);
                }

                throw new NoSuchReimbursementItemException(_NO_SUCH_ENTITY_WITH_PRIMARY_KEY +
                    primaryKey);
            }

            return remove(reimbursementItem);
        } catch (NoSuchReimbursementItemException nsee) {
            throw nsee;
        } catch (Exception e) {
            throw processException(e);
        } finally {
            closeSession(session);
        }
    }

    @Override
    protected ReimbursementItem removeImpl(ReimbursementItem reimbursementItem)
        throws SystemException {
        reimbursementItem = toUnwrappedModel(reimbursementItem);

        Session session = null;

        try {
            session = openSession();

            if (!session.contains(reimbursementItem)) {
                reimbursementItem = (ReimbursementItem) session.get(ReimbursementItemImpl.class,
                        reimbursementItem.getPrimaryKeyObj());
            }

            if (reimbursementItem != null) {
                session.delete(reimbursementItem);
            }
        } catch (Exception e) {
            throw processException(e);
        } finally {
            closeSession(session);
        }

        if (reimbursementItem != null) {
            clearCache(reimbursementItem);
        }

        return reimbursementItem;
    }

    @Override
    public ReimbursementItem updateImpl(
        com.xebia.xifire.model.ReimbursementItem reimbursementItem)
        throws SystemException {
        reimbursementItem = toUnwrappedModel(reimbursementItem);

        boolean isNew = reimbursementItem.isNew();

        Session session = null;

        try {
            session = openSession();

            if (reimbursementItem.isNew()) {
                session.save(reimbursementItem);

                reimbursementItem.setNew(false);
            } else {
                session.evict(reimbursementItem);
                session.saveOrUpdate(reimbursementItem);
            }

            session.flush();
            session.clear();
        } catch (Exception e) {
            throw processException(e);
        } finally {
            closeSession(session);
        }

        FinderCacheUtil.clearCache(FINDER_CLASS_NAME_LIST_WITH_PAGINATION);

        if (isNew) {
            FinderCacheUtil.clearCache(FINDER_CLASS_NAME_LIST_WITHOUT_PAGINATION);
        }

        EntityCacheUtil.putResult(ReimbursementItemModelImpl.ENTITY_CACHE_ENABLED,
            ReimbursementItemImpl.class, reimbursementItem.getPrimaryKey(),
            reimbursementItem);

        reimbursementItem.resetOriginalValues();

        return reimbursementItem;
    }

    protected ReimbursementItem toUnwrappedModel(
        ReimbursementItem reimbursementItem) {
        if (reimbursementItem instanceof ReimbursementItemImpl) {
            return reimbursementItem;
        }

        ReimbursementItemImpl reimbursementItemImpl = new ReimbursementItemImpl();

        reimbursementItemImpl.setNew(reimbursementItem.isNew());
        reimbursementItemImpl.setPrimaryKey(reimbursementItem.getPrimaryKey());

        reimbursementItemImpl.setId(reimbursementItem.getId());
        reimbursementItemImpl.setUserReimbursementId(reimbursementItem.getUserReimbursementId());
        reimbursementItemImpl.setBillDate(reimbursementItem.getBillDate());
        reimbursementItemImpl.setDescription(reimbursementItem.getDescription());
        reimbursementItemImpl.setBillAmount(reimbursementItem.getBillAmount());
        reimbursementItemImpl.setBillCategory(reimbursementItem.getBillCategory());
        reimbursementItemImpl.setDocument(reimbursementItem.getDocument());

        return reimbursementItemImpl;
    }

    /**
     * Returns the reimbursement item with the primary key or throws a {@link com.liferay.portal.NoSuchModelException} if it could not be found.
     *
     * @param primaryKey the primary key of the reimbursement item
     * @return the reimbursement item
     * @throws com.xebia.xifire.NoSuchReimbursementItemException if a reimbursement item with the primary key could not be found
     * @throws SystemException if a system exception occurred
     */
    @Override
    public ReimbursementItem findByPrimaryKey(Serializable primaryKey)
        throws NoSuchReimbursementItemException, SystemException {
        ReimbursementItem reimbursementItem = fetchByPrimaryKey(primaryKey);

        if (reimbursementItem == null) {
            if (_log.isWarnEnabled()) {
                _log.warn(_NO_SUCH_ENTITY_WITH_PRIMARY_KEY + primaryKey);
            }

            throw new NoSuchReimbursementItemException(_NO_SUCH_ENTITY_WITH_PRIMARY_KEY +
                primaryKey);
        }

        return reimbursementItem;
    }

    /**
     * Returns the reimbursement item with the primary key or throws a {@link com.xebia.xifire.NoSuchReimbursementItemException} if it could not be found.
     *
     * @param id the primary key of the reimbursement item
     * @return the reimbursement item
     * @throws com.xebia.xifire.NoSuchReimbursementItemException if a reimbursement item with the primary key could not be found
     * @throws SystemException if a system exception occurred
     */
    @Override
    public ReimbursementItem findByPrimaryKey(long id)
        throws NoSuchReimbursementItemException, SystemException {
        return findByPrimaryKey((Serializable) id);
    }

    /**
     * Returns the reimbursement item with the primary key or returns <code>null</code> if it could not be found.
     *
     * @param primaryKey the primary key of the reimbursement item
     * @return the reimbursement item, or <code>null</code> if a reimbursement item with the primary key could not be found
     * @throws SystemException if a system exception occurred
     */
    @Override
    public ReimbursementItem fetchByPrimaryKey(Serializable primaryKey)
        throws SystemException {
        ReimbursementItem reimbursementItem = (ReimbursementItem) EntityCacheUtil.getResult(ReimbursementItemModelImpl.ENTITY_CACHE_ENABLED,
                ReimbursementItemImpl.class, primaryKey);

        if (reimbursementItem == _nullReimbursementItem) {
            return null;
        }

        if (reimbursementItem == null) {
            Session session = null;

            try {
                session = openSession();

                reimbursementItem = (ReimbursementItem) session.get(ReimbursementItemImpl.class,
                        primaryKey);

                if (reimbursementItem != null) {
                    cacheResult(reimbursementItem);
                } else {
                    EntityCacheUtil.putResult(ReimbursementItemModelImpl.ENTITY_CACHE_ENABLED,
                        ReimbursementItemImpl.class, primaryKey,
                        _nullReimbursementItem);
                }
            } catch (Exception e) {
                EntityCacheUtil.removeResult(ReimbursementItemModelImpl.ENTITY_CACHE_ENABLED,
                    ReimbursementItemImpl.class, primaryKey);

                throw processException(e);
            } finally {
                closeSession(session);
            }
        }

        return reimbursementItem;
    }

    /**
     * Returns the reimbursement item with the primary key or returns <code>null</code> if it could not be found.
     *
     * @param id the primary key of the reimbursement item
     * @return the reimbursement item, or <code>null</code> if a reimbursement item with the primary key could not be found
     * @throws SystemException if a system exception occurred
     */
    @Override
    public ReimbursementItem fetchByPrimaryKey(long id)
        throws SystemException {
        return fetchByPrimaryKey((Serializable) id);
    }

    /**
     * Returns all the reimbursement items.
     *
     * @return the reimbursement items
     * @throws SystemException if a system exception occurred
     */
    @Override
    public List<ReimbursementItem> findAll() throws SystemException {
        return findAll(QueryUtil.ALL_POS, QueryUtil.ALL_POS, null);
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
    public List<ReimbursementItem> findAll(int start, int end)
        throws SystemException {
        return findAll(start, end, null);
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
    @Override
    public List<ReimbursementItem> findAll(int start, int end,
        OrderByComparator orderByComparator) throws SystemException {
        boolean pagination = true;
        FinderPath finderPath = null;
        Object[] finderArgs = null;

        if ((start == QueryUtil.ALL_POS) && (end == QueryUtil.ALL_POS) &&
                (orderByComparator == null)) {
            pagination = false;
            finderPath = FINDER_PATH_WITHOUT_PAGINATION_FIND_ALL;
            finderArgs = FINDER_ARGS_EMPTY;
        } else {
            finderPath = FINDER_PATH_WITH_PAGINATION_FIND_ALL;
            finderArgs = new Object[] { start, end, orderByComparator };
        }

        List<ReimbursementItem> list = (List<ReimbursementItem>) FinderCacheUtil.getResult(finderPath,
                finderArgs, this);

        if (list == null) {
            StringBundler query = null;
            String sql = null;

            if (orderByComparator != null) {
                query = new StringBundler(2 +
                        (orderByComparator.getOrderByFields().length * 3));

                query.append(_SQL_SELECT_REIMBURSEMENTITEM);

                appendOrderByComparator(query, _ORDER_BY_ENTITY_ALIAS,
                    orderByComparator);

                sql = query.toString();
            } else {
                sql = _SQL_SELECT_REIMBURSEMENTITEM;

                if (pagination) {
                    sql = sql.concat(ReimbursementItemModelImpl.ORDER_BY_JPQL);
                }
            }

            Session session = null;

            try {
                session = openSession();

                Query q = session.createQuery(sql);

                if (!pagination) {
                    list = (List<ReimbursementItem>) QueryUtil.list(q,
                            getDialect(), start, end, false);

                    Collections.sort(list);

                    list = new UnmodifiableList<ReimbursementItem>(list);
                } else {
                    list = (List<ReimbursementItem>) QueryUtil.list(q,
                            getDialect(), start, end);
                }

                cacheResult(list);

                FinderCacheUtil.putResult(finderPath, finderArgs, list);
            } catch (Exception e) {
                FinderCacheUtil.removeResult(finderPath, finderArgs);

                throw processException(e);
            } finally {
                closeSession(session);
            }
        }

        return list;
    }

    /**
     * Removes all the reimbursement items from the database.
     *
     * @throws SystemException if a system exception occurred
     */
    @Override
    public void removeAll() throws SystemException {
        for (ReimbursementItem reimbursementItem : findAll()) {
            remove(reimbursementItem);
        }
    }

    /**
     * Returns the number of reimbursement items.
     *
     * @return the number of reimbursement items
     * @throws SystemException if a system exception occurred
     */
    @Override
    public int countAll() throws SystemException {
        Long count = (Long) FinderCacheUtil.getResult(FINDER_PATH_COUNT_ALL,
                FINDER_ARGS_EMPTY, this);

        if (count == null) {
            Session session = null;

            try {
                session = openSession();

                Query q = session.createQuery(_SQL_COUNT_REIMBURSEMENTITEM);

                count = (Long) q.uniqueResult();

                FinderCacheUtil.putResult(FINDER_PATH_COUNT_ALL,
                    FINDER_ARGS_EMPTY, count);
            } catch (Exception e) {
                FinderCacheUtil.removeResult(FINDER_PATH_COUNT_ALL,
                    FINDER_ARGS_EMPTY);

                throw processException(e);
            } finally {
                closeSession(session);
            }
        }

        return count.intValue();
    }

    @Override
    protected Set<String> getBadColumnNames() {
        return _badColumnNames;
    }

    /**
     * Initializes the reimbursement item persistence.
     */
    public void afterPropertiesSet() {
        String[] listenerClassNames = StringUtil.split(GetterUtil.getString(
                    com.liferay.util.service.ServiceProps.get(
                        "value.object.listener.com.xebia.xifire.model.ReimbursementItem")));

        if (listenerClassNames.length > 0) {
            try {
                List<ModelListener<ReimbursementItem>> listenersList = new ArrayList<ModelListener<ReimbursementItem>>();

                for (String listenerClassName : listenerClassNames) {
                    listenersList.add((ModelListener<ReimbursementItem>) InstanceFactory.newInstance(
                            getClassLoader(), listenerClassName));
                }

                listeners = listenersList.toArray(new ModelListener[listenersList.size()]);
            } catch (Exception e) {
                _log.error(e);
            }
        }
    }

    public void destroy() {
        EntityCacheUtil.removeCache(ReimbursementItemImpl.class.getName());
        FinderCacheUtil.removeCache(FINDER_CLASS_NAME_ENTITY);
        FinderCacheUtil.removeCache(FINDER_CLASS_NAME_LIST_WITH_PAGINATION);
        FinderCacheUtil.removeCache(FINDER_CLASS_NAME_LIST_WITHOUT_PAGINATION);
    }
}
