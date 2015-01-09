package com.xebia.xifire.service.persistence;

import com.liferay.portal.kernel.cache.CacheRegistryUtil;
import com.liferay.portal.kernel.dao.orm.EntityCacheUtil;
import com.liferay.portal.kernel.dao.orm.FinderCacheUtil;
import com.liferay.portal.kernel.dao.orm.FinderPath;
import com.liferay.portal.kernel.dao.orm.Query;
import com.liferay.portal.kernel.dao.orm.QueryPos;
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
import com.liferay.portal.kernel.util.StringPool;
import com.liferay.portal.kernel.util.StringUtil;
import com.liferay.portal.kernel.util.UnmodifiableList;
import com.liferay.portal.model.CacheModel;
import com.liferay.portal.model.ModelListener;
import com.liferay.portal.service.persistence.impl.BasePersistenceImpl;

import com.xebia.xifire.NoSuchEmployeeDetailException;
import com.xebia.xifire.model.EmployeeDetail;
import com.xebia.xifire.model.impl.EmployeeDetailImpl;
import com.xebia.xifire.model.impl.EmployeeDetailModelImpl;
import com.xebia.xifire.service.persistence.EmployeeDetailPersistence;

import java.io.Serializable;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Set;

/**
 * The persistence implementation for the employee detail service.
 *
 * <p>
 * Caching information and settings can be found in <code>portal.properties</code>
 * </p>
 *
 * @author Brian Wing Shun Chan
 * @see EmployeeDetailPersistence
 * @see EmployeeDetailUtil
 * @generated
 */
public class EmployeeDetailPersistenceImpl extends BasePersistenceImpl<EmployeeDetail>
    implements EmployeeDetailPersistence {
    /*
     * NOTE FOR DEVELOPERS:
     *
     * Never modify or reference this class directly. Always use {@link EmployeeDetailUtil} to access the employee detail persistence. Modify <code>service.xml</code> and rerun ServiceBuilder to regenerate this class.
     */
    public static final String FINDER_CLASS_NAME_ENTITY = EmployeeDetailImpl.class.getName();
    public static final String FINDER_CLASS_NAME_LIST_WITH_PAGINATION = FINDER_CLASS_NAME_ENTITY +
        ".List1";
    public static final String FINDER_CLASS_NAME_LIST_WITHOUT_PAGINATION = FINDER_CLASS_NAME_ENTITY +
        ".List2";
    public static final FinderPath FINDER_PATH_WITH_PAGINATION_FIND_ALL = new FinderPath(EmployeeDetailModelImpl.ENTITY_CACHE_ENABLED,
            EmployeeDetailModelImpl.FINDER_CACHE_ENABLED,
            EmployeeDetailImpl.class, FINDER_CLASS_NAME_LIST_WITH_PAGINATION,
            "findAll", new String[0]);
    public static final FinderPath FINDER_PATH_WITHOUT_PAGINATION_FIND_ALL = new FinderPath(EmployeeDetailModelImpl.ENTITY_CACHE_ENABLED,
            EmployeeDetailModelImpl.FINDER_CACHE_ENABLED,
            EmployeeDetailImpl.class,
            FINDER_CLASS_NAME_LIST_WITHOUT_PAGINATION, "findAll", new String[0]);
    public static final FinderPath FINDER_PATH_COUNT_ALL = new FinderPath(EmployeeDetailModelImpl.ENTITY_CACHE_ENABLED,
            EmployeeDetailModelImpl.FINDER_CACHE_ENABLED, Long.class,
            FINDER_CLASS_NAME_LIST_WITHOUT_PAGINATION, "countAll", new String[0]);
    public static final FinderPath FINDER_PATH_FETCH_BY_USERID = new FinderPath(EmployeeDetailModelImpl.ENTITY_CACHE_ENABLED,
            EmployeeDetailModelImpl.FINDER_CACHE_ENABLED,
            EmployeeDetailImpl.class, FINDER_CLASS_NAME_ENTITY,
            "fetchByUserId", new String[] { Integer.class.getName() },
            EmployeeDetailModelImpl.USERID_COLUMN_BITMASK);
    public static final FinderPath FINDER_PATH_COUNT_BY_USERID = new FinderPath(EmployeeDetailModelImpl.ENTITY_CACHE_ENABLED,
            EmployeeDetailModelImpl.FINDER_CACHE_ENABLED, Long.class,
            FINDER_CLASS_NAME_LIST_WITHOUT_PAGINATION, "countByUserId",
            new String[] { Integer.class.getName() });
    private static final String _FINDER_COLUMN_USERID_USERID_2 = "employeeDetail.userId = ?";
    private static final String _SQL_SELECT_EMPLOYEEDETAIL = "SELECT employeeDetail FROM EmployeeDetail employeeDetail";
    private static final String _SQL_SELECT_EMPLOYEEDETAIL_WHERE = "SELECT employeeDetail FROM EmployeeDetail employeeDetail WHERE ";
    private static final String _SQL_COUNT_EMPLOYEEDETAIL = "SELECT COUNT(employeeDetail) FROM EmployeeDetail employeeDetail";
    private static final String _SQL_COUNT_EMPLOYEEDETAIL_WHERE = "SELECT COUNT(employeeDetail) FROM EmployeeDetail employeeDetail WHERE ";
    private static final String _ORDER_BY_ENTITY_ALIAS = "employeeDetail.";
    private static final String _NO_SUCH_ENTITY_WITH_PRIMARY_KEY = "No EmployeeDetail exists with the primary key ";
    private static final String _NO_SUCH_ENTITY_WITH_KEY = "No EmployeeDetail exists with the key {";
    private static final boolean _HIBERNATE_CACHE_USE_SECOND_LEVEL_CACHE = GetterUtil.getBoolean(PropsUtil.get(
                PropsKeys.HIBERNATE_CACHE_USE_SECOND_LEVEL_CACHE));
    private static Log _log = LogFactoryUtil.getLog(EmployeeDetailPersistenceImpl.class);
    private static Set<String> _badColumnNames = SetUtil.fromArray(new String[] {
                "id"
            });
    private static EmployeeDetail _nullEmployeeDetail = new EmployeeDetailImpl() {
            @Override
            public Object clone() {
                return this;
            }

            @Override
            public CacheModel<EmployeeDetail> toCacheModel() {
                return _nullEmployeeDetailCacheModel;
            }
        };

    private static CacheModel<EmployeeDetail> _nullEmployeeDetailCacheModel = new CacheModel<EmployeeDetail>() {
            @Override
            public EmployeeDetail toEntityModel() {
                return _nullEmployeeDetail;
            }
        };

    public EmployeeDetailPersistenceImpl() {
        setModelClass(EmployeeDetail.class);
    }

    /**
     * Returns the employee detail where userId = &#63; or throws a {@link com.xebia.xifire.NoSuchEmployeeDetailException} if it could not be found.
     *
     * @param userId the user ID
     * @return the matching employee detail
     * @throws com.xebia.xifire.NoSuchEmployeeDetailException if a matching employee detail could not be found
     * @throws SystemException if a system exception occurred
     */
    @Override
    public EmployeeDetail findByUserId(int userId)
        throws NoSuchEmployeeDetailException, SystemException {
        EmployeeDetail employeeDetail = fetchByUserId(userId);

        if (employeeDetail == null) {
            StringBundler msg = new StringBundler(4);

            msg.append(_NO_SUCH_ENTITY_WITH_KEY);

            msg.append("userId=");
            msg.append(userId);

            msg.append(StringPool.CLOSE_CURLY_BRACE);

            if (_log.isWarnEnabled()) {
                _log.warn(msg.toString());
            }

            throw new NoSuchEmployeeDetailException(msg.toString());
        }

        return employeeDetail;
    }

    /**
     * Returns the employee detail where userId = &#63; or returns <code>null</code> if it could not be found. Uses the finder cache.
     *
     * @param userId the user ID
     * @return the matching employee detail, or <code>null</code> if a matching employee detail could not be found
     * @throws SystemException if a system exception occurred
     */
    @Override
    public EmployeeDetail fetchByUserId(int userId) throws SystemException {
        return fetchByUserId(userId, true);
    }

    /**
     * Returns the employee detail where userId = &#63; or returns <code>null</code> if it could not be found, optionally using the finder cache.
     *
     * @param userId the user ID
     * @param retrieveFromCache whether to use the finder cache
     * @return the matching employee detail, or <code>null</code> if a matching employee detail could not be found
     * @throws SystemException if a system exception occurred
     */
    @Override
    public EmployeeDetail fetchByUserId(int userId, boolean retrieveFromCache)
        throws SystemException {
        Object[] finderArgs = new Object[] { userId };

        Object result = null;

        if (retrieveFromCache) {
            result = FinderCacheUtil.getResult(FINDER_PATH_FETCH_BY_USERID,
                    finderArgs, this);
        }

        if (result instanceof EmployeeDetail) {
            EmployeeDetail employeeDetail = (EmployeeDetail) result;

            if ((userId != employeeDetail.getUserId())) {
                result = null;
            }
        }

        if (result == null) {
            StringBundler query = new StringBundler(3);

            query.append(_SQL_SELECT_EMPLOYEEDETAIL_WHERE);

            query.append(_FINDER_COLUMN_USERID_USERID_2);

            String sql = query.toString();

            Session session = null;

            try {
                session = openSession();

                Query q = session.createQuery(sql);

                QueryPos qPos = QueryPos.getInstance(q);

                qPos.add(userId);

                List<EmployeeDetail> list = q.list();

                if (list.isEmpty()) {
                    FinderCacheUtil.putResult(FINDER_PATH_FETCH_BY_USERID,
                        finderArgs, list);
                } else {
                    EmployeeDetail employeeDetail = list.get(0);

                    result = employeeDetail;

                    cacheResult(employeeDetail);

                    if ((employeeDetail.getUserId() != userId)) {
                        FinderCacheUtil.putResult(FINDER_PATH_FETCH_BY_USERID,
                            finderArgs, employeeDetail);
                    }
                }
            } catch (Exception e) {
                FinderCacheUtil.removeResult(FINDER_PATH_FETCH_BY_USERID,
                    finderArgs);

                throw processException(e);
            } finally {
                closeSession(session);
            }
        }

        if (result instanceof List<?>) {
            return null;
        } else {
            return (EmployeeDetail) result;
        }
    }

    /**
     * Removes the employee detail where userId = &#63; from the database.
     *
     * @param userId the user ID
     * @return the employee detail that was removed
     * @throws SystemException if a system exception occurred
     */
    @Override
    public EmployeeDetail removeByUserId(int userId)
        throws NoSuchEmployeeDetailException, SystemException {
        EmployeeDetail employeeDetail = findByUserId(userId);

        return remove(employeeDetail);
    }

    /**
     * Returns the number of employee details where userId = &#63;.
     *
     * @param userId the user ID
     * @return the number of matching employee details
     * @throws SystemException if a system exception occurred
     */
    @Override
    public int countByUserId(int userId) throws SystemException {
        FinderPath finderPath = FINDER_PATH_COUNT_BY_USERID;

        Object[] finderArgs = new Object[] { userId };

        Long count = (Long) FinderCacheUtil.getResult(finderPath, finderArgs,
                this);

        if (count == null) {
            StringBundler query = new StringBundler(2);

            query.append(_SQL_COUNT_EMPLOYEEDETAIL_WHERE);

            query.append(_FINDER_COLUMN_USERID_USERID_2);

            String sql = query.toString();

            Session session = null;

            try {
                session = openSession();

                Query q = session.createQuery(sql);

                QueryPos qPos = QueryPos.getInstance(q);

                qPos.add(userId);

                count = (Long) q.uniqueResult();

                FinderCacheUtil.putResult(finderPath, finderArgs, count);
            } catch (Exception e) {
                FinderCacheUtil.removeResult(finderPath, finderArgs);

                throw processException(e);
            } finally {
                closeSession(session);
            }
        }

        return count.intValue();
    }

    /**
     * Caches the employee detail in the entity cache if it is enabled.
     *
     * @param employeeDetail the employee detail
     */
    @Override
    public void cacheResult(EmployeeDetail employeeDetail) {
        EntityCacheUtil.putResult(EmployeeDetailModelImpl.ENTITY_CACHE_ENABLED,
            EmployeeDetailImpl.class, employeeDetail.getPrimaryKey(),
            employeeDetail);

        FinderCacheUtil.putResult(FINDER_PATH_FETCH_BY_USERID,
            new Object[] { employeeDetail.getUserId() }, employeeDetail);

        employeeDetail.resetOriginalValues();
    }

    /**
     * Caches the employee details in the entity cache if it is enabled.
     *
     * @param employeeDetails the employee details
     */
    @Override
    public void cacheResult(List<EmployeeDetail> employeeDetails) {
        for (EmployeeDetail employeeDetail : employeeDetails) {
            if (EntityCacheUtil.getResult(
                        EmployeeDetailModelImpl.ENTITY_CACHE_ENABLED,
                        EmployeeDetailImpl.class, employeeDetail.getPrimaryKey()) == null) {
                cacheResult(employeeDetail);
            } else {
                employeeDetail.resetOriginalValues();
            }
        }
    }

    /**
     * Clears the cache for all employee details.
     *
     * <p>
     * The {@link com.liferay.portal.kernel.dao.orm.EntityCache} and {@link com.liferay.portal.kernel.dao.orm.FinderCache} are both cleared by this method.
     * </p>
     */
    @Override
    public void clearCache() {
        if (_HIBERNATE_CACHE_USE_SECOND_LEVEL_CACHE) {
            CacheRegistryUtil.clear(EmployeeDetailImpl.class.getName());
        }

        EntityCacheUtil.clearCache(EmployeeDetailImpl.class.getName());

        FinderCacheUtil.clearCache(FINDER_CLASS_NAME_ENTITY);
        FinderCacheUtil.clearCache(FINDER_CLASS_NAME_LIST_WITH_PAGINATION);
        FinderCacheUtil.clearCache(FINDER_CLASS_NAME_LIST_WITHOUT_PAGINATION);
    }

    /**
     * Clears the cache for the employee detail.
     *
     * <p>
     * The {@link com.liferay.portal.kernel.dao.orm.EntityCache} and {@link com.liferay.portal.kernel.dao.orm.FinderCache} are both cleared by this method.
     * </p>
     */
    @Override
    public void clearCache(EmployeeDetail employeeDetail) {
        EntityCacheUtil.removeResult(EmployeeDetailModelImpl.ENTITY_CACHE_ENABLED,
            EmployeeDetailImpl.class, employeeDetail.getPrimaryKey());

        FinderCacheUtil.clearCache(FINDER_CLASS_NAME_LIST_WITH_PAGINATION);
        FinderCacheUtil.clearCache(FINDER_CLASS_NAME_LIST_WITHOUT_PAGINATION);

        clearUniqueFindersCache(employeeDetail);
    }

    @Override
    public void clearCache(List<EmployeeDetail> employeeDetails) {
        FinderCacheUtil.clearCache(FINDER_CLASS_NAME_LIST_WITH_PAGINATION);
        FinderCacheUtil.clearCache(FINDER_CLASS_NAME_LIST_WITHOUT_PAGINATION);

        for (EmployeeDetail employeeDetail : employeeDetails) {
            EntityCacheUtil.removeResult(EmployeeDetailModelImpl.ENTITY_CACHE_ENABLED,
                EmployeeDetailImpl.class, employeeDetail.getPrimaryKey());

            clearUniqueFindersCache(employeeDetail);
        }
    }

    protected void cacheUniqueFindersCache(EmployeeDetail employeeDetail) {
        if (employeeDetail.isNew()) {
            Object[] args = new Object[] { employeeDetail.getUserId() };

            FinderCacheUtil.putResult(FINDER_PATH_COUNT_BY_USERID, args,
                Long.valueOf(1));
            FinderCacheUtil.putResult(FINDER_PATH_FETCH_BY_USERID, args,
                employeeDetail);
        } else {
            EmployeeDetailModelImpl employeeDetailModelImpl = (EmployeeDetailModelImpl) employeeDetail;

            if ((employeeDetailModelImpl.getColumnBitmask() &
                    FINDER_PATH_FETCH_BY_USERID.getColumnBitmask()) != 0) {
                Object[] args = new Object[] { employeeDetail.getUserId() };

                FinderCacheUtil.putResult(FINDER_PATH_COUNT_BY_USERID, args,
                    Long.valueOf(1));
                FinderCacheUtil.putResult(FINDER_PATH_FETCH_BY_USERID, args,
                    employeeDetail);
            }
        }
    }

    protected void clearUniqueFindersCache(EmployeeDetail employeeDetail) {
        EmployeeDetailModelImpl employeeDetailModelImpl = (EmployeeDetailModelImpl) employeeDetail;

        Object[] args = new Object[] { employeeDetail.getUserId() };

        FinderCacheUtil.removeResult(FINDER_PATH_COUNT_BY_USERID, args);
        FinderCacheUtil.removeResult(FINDER_PATH_FETCH_BY_USERID, args);

        if ((employeeDetailModelImpl.getColumnBitmask() &
                FINDER_PATH_FETCH_BY_USERID.getColumnBitmask()) != 0) {
            args = new Object[] { employeeDetailModelImpl.getOriginalUserId() };

            FinderCacheUtil.removeResult(FINDER_PATH_COUNT_BY_USERID, args);
            FinderCacheUtil.removeResult(FINDER_PATH_FETCH_BY_USERID, args);
        }
    }

    /**
     * Creates a new employee detail with the primary key. Does not add the employee detail to the database.
     *
     * @param id the primary key for the new employee detail
     * @return the new employee detail
     */
    @Override
    public EmployeeDetail create(int id) {
        EmployeeDetail employeeDetail = new EmployeeDetailImpl();

        employeeDetail.setNew(true);
        employeeDetail.setPrimaryKey(id);

        return employeeDetail;
    }

    /**
     * Removes the employee detail with the primary key from the database. Also notifies the appropriate model listeners.
     *
     * @param id the primary key of the employee detail
     * @return the employee detail that was removed
     * @throws com.xebia.xifire.NoSuchEmployeeDetailException if a employee detail with the primary key could not be found
     * @throws SystemException if a system exception occurred
     */
    @Override
    public EmployeeDetail remove(int id)
        throws NoSuchEmployeeDetailException, SystemException {
        return remove((Serializable) id);
    }

    /**
     * Removes the employee detail with the primary key from the database. Also notifies the appropriate model listeners.
     *
     * @param primaryKey the primary key of the employee detail
     * @return the employee detail that was removed
     * @throws com.xebia.xifire.NoSuchEmployeeDetailException if a employee detail with the primary key could not be found
     * @throws SystemException if a system exception occurred
     */
    @Override
    public EmployeeDetail remove(Serializable primaryKey)
        throws NoSuchEmployeeDetailException, SystemException {
        Session session = null;

        try {
            session = openSession();

            EmployeeDetail employeeDetail = (EmployeeDetail) session.get(EmployeeDetailImpl.class,
                    primaryKey);

            if (employeeDetail == null) {
                if (_log.isWarnEnabled()) {
                    _log.warn(_NO_SUCH_ENTITY_WITH_PRIMARY_KEY + primaryKey);
                }

                throw new NoSuchEmployeeDetailException(_NO_SUCH_ENTITY_WITH_PRIMARY_KEY +
                    primaryKey);
            }

            return remove(employeeDetail);
        } catch (NoSuchEmployeeDetailException nsee) {
            throw nsee;
        } catch (Exception e) {
            throw processException(e);
        } finally {
            closeSession(session);
        }
    }

    @Override
    protected EmployeeDetail removeImpl(EmployeeDetail employeeDetail)
        throws SystemException {
        employeeDetail = toUnwrappedModel(employeeDetail);

        Session session = null;

        try {
            session = openSession();

            if (!session.contains(employeeDetail)) {
                employeeDetail = (EmployeeDetail) session.get(EmployeeDetailImpl.class,
                        employeeDetail.getPrimaryKeyObj());
            }

            if (employeeDetail != null) {
                session.delete(employeeDetail);
            }
        } catch (Exception e) {
            throw processException(e);
        } finally {
            closeSession(session);
        }

        if (employeeDetail != null) {
            clearCache(employeeDetail);
        }

        return employeeDetail;
    }

    @Override
    public EmployeeDetail updateImpl(
        com.xebia.xifire.model.EmployeeDetail employeeDetail)
        throws SystemException {
        employeeDetail = toUnwrappedModel(employeeDetail);

        boolean isNew = employeeDetail.isNew();

        Session session = null;

        try {
            session = openSession();

            if (employeeDetail.isNew()) {
                session.save(employeeDetail);

                employeeDetail.setNew(false);
            } else {
                session.merge(employeeDetail);
            }
        } catch (Exception e) {
            throw processException(e);
        } finally {
            closeSession(session);
        }

        FinderCacheUtil.clearCache(FINDER_CLASS_NAME_LIST_WITH_PAGINATION);

        if (isNew || !EmployeeDetailModelImpl.COLUMN_BITMASK_ENABLED) {
            FinderCacheUtil.clearCache(FINDER_CLASS_NAME_LIST_WITHOUT_PAGINATION);
        }

        EntityCacheUtil.putResult(EmployeeDetailModelImpl.ENTITY_CACHE_ENABLED,
            EmployeeDetailImpl.class, employeeDetail.getPrimaryKey(),
            employeeDetail);

        clearUniqueFindersCache(employeeDetail);
        cacheUniqueFindersCache(employeeDetail);

        return employeeDetail;
    }

    protected EmployeeDetail toUnwrappedModel(EmployeeDetail employeeDetail) {
        if (employeeDetail instanceof EmployeeDetailImpl) {
            return employeeDetail;
        }

        EmployeeDetailImpl employeeDetailImpl = new EmployeeDetailImpl();

        employeeDetailImpl.setNew(employeeDetail.isNew());
        employeeDetailImpl.setPrimaryKey(employeeDetail.getPrimaryKey());

        employeeDetailImpl.setId(employeeDetail.getId());
        employeeDetailImpl.setUserId(employeeDetail.getUserId());
        employeeDetailImpl.setEmployeeCode(employeeDetail.getEmployeeCode());
        employeeDetailImpl.setDesignation(employeeDetail.getDesignation());
        employeeDetailImpl.setLocation(employeeDetail.getLocation());
        employeeDetailImpl.setDepartment(employeeDetail.getDepartment());
        employeeDetailImpl.setPfNumber(employeeDetail.getPfNumber());
        employeeDetailImpl.setDoj(employeeDetail.getDoj());
        employeeDetailImpl.setBankAccount(employeeDetail.getBankAccount());
        employeeDetailImpl.setPanNumber(employeeDetail.getPanNumber());

        return employeeDetailImpl;
    }

    /**
     * Returns the employee detail with the primary key or throws a {@link com.liferay.portal.NoSuchModelException} if it could not be found.
     *
     * @param primaryKey the primary key of the employee detail
     * @return the employee detail
     * @throws com.xebia.xifire.NoSuchEmployeeDetailException if a employee detail with the primary key could not be found
     * @throws SystemException if a system exception occurred
     */
    @Override
    public EmployeeDetail findByPrimaryKey(Serializable primaryKey)
        throws NoSuchEmployeeDetailException, SystemException {
        EmployeeDetail employeeDetail = fetchByPrimaryKey(primaryKey);

        if (employeeDetail == null) {
            if (_log.isWarnEnabled()) {
                _log.warn(_NO_SUCH_ENTITY_WITH_PRIMARY_KEY + primaryKey);
            }

            throw new NoSuchEmployeeDetailException(_NO_SUCH_ENTITY_WITH_PRIMARY_KEY +
                primaryKey);
        }

        return employeeDetail;
    }

    /**
     * Returns the employee detail with the primary key or throws a {@link com.xebia.xifire.NoSuchEmployeeDetailException} if it could not be found.
     *
     * @param id the primary key of the employee detail
     * @return the employee detail
     * @throws com.xebia.xifire.NoSuchEmployeeDetailException if a employee detail with the primary key could not be found
     * @throws SystemException if a system exception occurred
     */
    @Override
    public EmployeeDetail findByPrimaryKey(int id)
        throws NoSuchEmployeeDetailException, SystemException {
        return findByPrimaryKey((Serializable) id);
    }

    /**
     * Returns the employee detail with the primary key or returns <code>null</code> if it could not be found.
     *
     * @param primaryKey the primary key of the employee detail
     * @return the employee detail, or <code>null</code> if a employee detail with the primary key could not be found
     * @throws SystemException if a system exception occurred
     */
    @Override
    public EmployeeDetail fetchByPrimaryKey(Serializable primaryKey)
        throws SystemException {
        EmployeeDetail employeeDetail = (EmployeeDetail) EntityCacheUtil.getResult(EmployeeDetailModelImpl.ENTITY_CACHE_ENABLED,
                EmployeeDetailImpl.class, primaryKey);

        if (employeeDetail == _nullEmployeeDetail) {
            return null;
        }

        if (employeeDetail == null) {
            Session session = null;

            try {
                session = openSession();

                employeeDetail = (EmployeeDetail) session.get(EmployeeDetailImpl.class,
                        primaryKey);

                if (employeeDetail != null) {
                    cacheResult(employeeDetail);
                } else {
                    EntityCacheUtil.putResult(EmployeeDetailModelImpl.ENTITY_CACHE_ENABLED,
                        EmployeeDetailImpl.class, primaryKey,
                        _nullEmployeeDetail);
                }
            } catch (Exception e) {
                EntityCacheUtil.removeResult(EmployeeDetailModelImpl.ENTITY_CACHE_ENABLED,
                    EmployeeDetailImpl.class, primaryKey);

                throw processException(e);
            } finally {
                closeSession(session);
            }
        }

        return employeeDetail;
    }

    /**
     * Returns the employee detail with the primary key or returns <code>null</code> if it could not be found.
     *
     * @param id the primary key of the employee detail
     * @return the employee detail, or <code>null</code> if a employee detail with the primary key could not be found
     * @throws SystemException if a system exception occurred
     */
    @Override
    public EmployeeDetail fetchByPrimaryKey(int id) throws SystemException {
        return fetchByPrimaryKey((Serializable) id);
    }

    /**
     * Returns all the employee details.
     *
     * @return the employee details
     * @throws SystemException if a system exception occurred
     */
    @Override
    public List<EmployeeDetail> findAll() throws SystemException {
        return findAll(QueryUtil.ALL_POS, QueryUtil.ALL_POS, null);
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
    @Override
    public List<EmployeeDetail> findAll(int start, int end)
        throws SystemException {
        return findAll(start, end, null);
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
    @Override
    public List<EmployeeDetail> findAll(int start, int end,
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

        List<EmployeeDetail> list = (List<EmployeeDetail>) FinderCacheUtil.getResult(finderPath,
                finderArgs, this);

        if (list == null) {
            StringBundler query = null;
            String sql = null;

            if (orderByComparator != null) {
                query = new StringBundler(2 +
                        (orderByComparator.getOrderByFields().length * 3));

                query.append(_SQL_SELECT_EMPLOYEEDETAIL);

                appendOrderByComparator(query, _ORDER_BY_ENTITY_ALIAS,
                    orderByComparator);

                sql = query.toString();
            } else {
                sql = _SQL_SELECT_EMPLOYEEDETAIL;

                if (pagination) {
                    sql = sql.concat(EmployeeDetailModelImpl.ORDER_BY_JPQL);
                }
            }

            Session session = null;

            try {
                session = openSession();

                Query q = session.createQuery(sql);

                if (!pagination) {
                    list = (List<EmployeeDetail>) QueryUtil.list(q,
                            getDialect(), start, end, false);

                    Collections.sort(list);

                    list = new UnmodifiableList<EmployeeDetail>(list);
                } else {
                    list = (List<EmployeeDetail>) QueryUtil.list(q,
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
     * Removes all the employee details from the database.
     *
     * @throws SystemException if a system exception occurred
     */
    @Override
    public void removeAll() throws SystemException {
        for (EmployeeDetail employeeDetail : findAll()) {
            remove(employeeDetail);
        }
    }

    /**
     * Returns the number of employee details.
     *
     * @return the number of employee details
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

                Query q = session.createQuery(_SQL_COUNT_EMPLOYEEDETAIL);

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
     * Initializes the employee detail persistence.
     */
    public void afterPropertiesSet() {
        String[] listenerClassNames = StringUtil.split(GetterUtil.getString(
                    com.liferay.util.service.ServiceProps.get(
                        "value.object.listener.com.xebia.xifire.model.EmployeeDetail")));

        if (listenerClassNames.length > 0) {
            try {
                List<ModelListener<EmployeeDetail>> listenersList = new ArrayList<ModelListener<EmployeeDetail>>();

                for (String listenerClassName : listenerClassNames) {
                    listenersList.add((ModelListener<EmployeeDetail>) InstanceFactory.newInstance(
                            getClassLoader(), listenerClassName));
                }

                listeners = listenersList.toArray(new ModelListener[listenersList.size()]);
            } catch (Exception e) {
                _log.error(e);
            }
        }
    }

    public void destroy() {
        EntityCacheUtil.removeCache(EmployeeDetailImpl.class.getName());
        FinderCacheUtil.removeCache(FINDER_CLASS_NAME_ENTITY);
        FinderCacheUtil.removeCache(FINDER_CLASS_NAME_LIST_WITH_PAGINATION);
        FinderCacheUtil.removeCache(FINDER_CLASS_NAME_LIST_WITHOUT_PAGINATION);
    }
}
