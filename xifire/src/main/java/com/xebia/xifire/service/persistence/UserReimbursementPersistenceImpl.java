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

import com.xebia.xifire.NoSuchUserReimbursementException;
import com.xebia.xifire.model.UserReimbursement;
import com.xebia.xifire.model.impl.UserReimbursementImpl;
import com.xebia.xifire.model.impl.UserReimbursementModelImpl;
import com.xebia.xifire.service.persistence.UserReimbursementPersistence;

import java.io.Serializable;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Set;

/**
 * The persistence implementation for the user reimbursement service.
 *
 * <p>
 * Caching information and settings can be found in <code>portal.properties</code>
 * </p>
 *
 * @author Brian Wing Shun Chan
 * @see UserReimbursementPersistence
 * @see UserReimbursementUtil
 * @generated
 */
public class UserReimbursementPersistenceImpl extends BasePersistenceImpl<UserReimbursement>
    implements UserReimbursementPersistence {
    /*
     * NOTE FOR DEVELOPERS:
     *
     * Never modify or reference this class directly. Always use {@link UserReimbursementUtil} to access the user reimbursement persistence. Modify <code>service.xml</code> and rerun ServiceBuilder to regenerate this class.
     */
    public static final String FINDER_CLASS_NAME_ENTITY = UserReimbursementImpl.class.getName();
    public static final String FINDER_CLASS_NAME_LIST_WITH_PAGINATION = FINDER_CLASS_NAME_ENTITY +
        ".List1";
    public static final String FINDER_CLASS_NAME_LIST_WITHOUT_PAGINATION = FINDER_CLASS_NAME_ENTITY +
        ".List2";
    public static final FinderPath FINDER_PATH_WITH_PAGINATION_FIND_ALL = new FinderPath(UserReimbursementModelImpl.ENTITY_CACHE_ENABLED,
            UserReimbursementModelImpl.FINDER_CACHE_ENABLED,
            UserReimbursementImpl.class,
            FINDER_CLASS_NAME_LIST_WITH_PAGINATION, "findAll", new String[0]);
    public static final FinderPath FINDER_PATH_WITHOUT_PAGINATION_FIND_ALL = new FinderPath(UserReimbursementModelImpl.ENTITY_CACHE_ENABLED,
            UserReimbursementModelImpl.FINDER_CACHE_ENABLED,
            UserReimbursementImpl.class,
            FINDER_CLASS_NAME_LIST_WITHOUT_PAGINATION, "findAll", new String[0]);
    public static final FinderPath FINDER_PATH_COUNT_ALL = new FinderPath(UserReimbursementModelImpl.ENTITY_CACHE_ENABLED,
            UserReimbursementModelImpl.FINDER_CACHE_ENABLED, Long.class,
            FINDER_CLASS_NAME_LIST_WITHOUT_PAGINATION, "countAll", new String[0]);
    public static final FinderPath FINDER_PATH_FETCH_BY_USERID = new FinderPath(UserReimbursementModelImpl.ENTITY_CACHE_ENABLED,
            UserReimbursementModelImpl.FINDER_CACHE_ENABLED,
            UserReimbursementImpl.class, FINDER_CLASS_NAME_ENTITY,
            "fetchByUserId", new String[] { Long.class.getName() },
            UserReimbursementModelImpl.USERID_COLUMN_BITMASK);
    public static final FinderPath FINDER_PATH_COUNT_BY_USERID = new FinderPath(UserReimbursementModelImpl.ENTITY_CACHE_ENABLED,
            UserReimbursementModelImpl.FINDER_CACHE_ENABLED, Long.class,
            FINDER_CLASS_NAME_LIST_WITHOUT_PAGINATION, "countByUserId",
            new String[] { Long.class.getName() });
    private static final String _FINDER_COLUMN_USERID_USERID_2 = "userReimbursement.userId = ?";
    private static final String _SQL_SELECT_USERREIMBURSEMENT = "SELECT userReimbursement FROM UserReimbursement userReimbursement";
    private static final String _SQL_SELECT_USERREIMBURSEMENT_WHERE = "SELECT userReimbursement FROM UserReimbursement userReimbursement WHERE ";
    private static final String _SQL_COUNT_USERREIMBURSEMENT = "SELECT COUNT(userReimbursement) FROM UserReimbursement userReimbursement";
    private static final String _SQL_COUNT_USERREIMBURSEMENT_WHERE = "SELECT COUNT(userReimbursement) FROM UserReimbursement userReimbursement WHERE ";
    private static final String _ORDER_BY_ENTITY_ALIAS = "userReimbursement.";
    private static final String _NO_SUCH_ENTITY_WITH_PRIMARY_KEY = "No UserReimbursement exists with the primary key ";
    private static final String _NO_SUCH_ENTITY_WITH_KEY = "No UserReimbursement exists with the key {";
    private static final boolean _HIBERNATE_CACHE_USE_SECOND_LEVEL_CACHE = GetterUtil.getBoolean(PropsUtil.get(
                PropsKeys.HIBERNATE_CACHE_USE_SECOND_LEVEL_CACHE));
    private static Log _log = LogFactoryUtil.getLog(UserReimbursementPersistenceImpl.class);
    private static Set<String> _badColumnNames = SetUtil.fromArray(new String[] {
                "id"
            });
    private static UserReimbursement _nullUserReimbursement = new UserReimbursementImpl() {
            @Override
            public Object clone() {
                return this;
            }

            @Override
            public CacheModel<UserReimbursement> toCacheModel() {
                return _nullUserReimbursementCacheModel;
            }
        };

    private static CacheModel<UserReimbursement> _nullUserReimbursementCacheModel =
        new CacheModel<UserReimbursement>() {
            @Override
            public UserReimbursement toEntityModel() {
                return _nullUserReimbursement;
            }
        };

    public UserReimbursementPersistenceImpl() {
        setModelClass(UserReimbursement.class);
    }

    /**
     * Returns the user reimbursement where userId = &#63; or throws a {@link com.xebia.xifire.NoSuchUserReimbursementException} if it could not be found.
     *
     * @param userId the user ID
     * @return the matching user reimbursement
     * @throws com.xebia.xifire.NoSuchUserReimbursementException if a matching user reimbursement could not be found
     * @throws SystemException if a system exception occurred
     */
    @Override
    public UserReimbursement findByUserId(long userId)
        throws NoSuchUserReimbursementException, SystemException {
        UserReimbursement userReimbursement = fetchByUserId(userId);

        if (userReimbursement == null) {
            StringBundler msg = new StringBundler(4);

            msg.append(_NO_SUCH_ENTITY_WITH_KEY);

            msg.append("userId=");
            msg.append(userId);

            msg.append(StringPool.CLOSE_CURLY_BRACE);

            if (_log.isWarnEnabled()) {
                _log.warn(msg.toString());
            }

            throw new NoSuchUserReimbursementException(msg.toString());
        }

        return userReimbursement;
    }

    /**
     * Returns the user reimbursement where userId = &#63; or returns <code>null</code> if it could not be found. Uses the finder cache.
     *
     * @param userId the user ID
     * @return the matching user reimbursement, or <code>null</code> if a matching user reimbursement could not be found
     * @throws SystemException if a system exception occurred
     */
    @Override
    public UserReimbursement fetchByUserId(long userId)
        throws SystemException {
        return fetchByUserId(userId, true);
    }

    /**
     * Returns the user reimbursement where userId = &#63; or returns <code>null</code> if it could not be found, optionally using the finder cache.
     *
     * @param userId the user ID
     * @param retrieveFromCache whether to use the finder cache
     * @return the matching user reimbursement, or <code>null</code> if a matching user reimbursement could not be found
     * @throws SystemException if a system exception occurred
     */
    @Override
    public UserReimbursement fetchByUserId(long userId,
        boolean retrieveFromCache) throws SystemException {
        Object[] finderArgs = new Object[] { userId };

        Object result = null;

        if (retrieveFromCache) {
            result = FinderCacheUtil.getResult(FINDER_PATH_FETCH_BY_USERID,
                    finderArgs, this);
        }

        if (result instanceof UserReimbursement) {
            UserReimbursement userReimbursement = (UserReimbursement) result;

            if ((userId != userReimbursement.getUserId())) {
                result = null;
            }
        }

        if (result == null) {
            StringBundler query = new StringBundler(3);

            query.append(_SQL_SELECT_USERREIMBURSEMENT_WHERE);

            query.append(_FINDER_COLUMN_USERID_USERID_2);

            String sql = query.toString();

            Session session = null;

            try {
                session = openSession();

                Query q = session.createQuery(sql);

                QueryPos qPos = QueryPos.getInstance(q);

                qPos.add(userId);

                List<UserReimbursement> list = q.list();

                if (list.isEmpty()) {
                    FinderCacheUtil.putResult(FINDER_PATH_FETCH_BY_USERID,
                        finderArgs, list);
                } else {
                    UserReimbursement userReimbursement = list.get(0);

                    result = userReimbursement;

                    cacheResult(userReimbursement);

                    if ((userReimbursement.getUserId() != userId)) {
                        FinderCacheUtil.putResult(FINDER_PATH_FETCH_BY_USERID,
                            finderArgs, userReimbursement);
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
            return (UserReimbursement) result;
        }
    }

    /**
     * Removes the user reimbursement where userId = &#63; from the database.
     *
     * @param userId the user ID
     * @return the user reimbursement that was removed
     * @throws SystemException if a system exception occurred
     */
    @Override
    public UserReimbursement removeByUserId(long userId)
        throws NoSuchUserReimbursementException, SystemException {
        UserReimbursement userReimbursement = findByUserId(userId);

        return remove(userReimbursement);
    }

    /**
     * Returns the number of user reimbursements where userId = &#63;.
     *
     * @param userId the user ID
     * @return the number of matching user reimbursements
     * @throws SystemException if a system exception occurred
     */
    @Override
    public int countByUserId(long userId) throws SystemException {
        FinderPath finderPath = FINDER_PATH_COUNT_BY_USERID;

        Object[] finderArgs = new Object[] { userId };

        Long count = (Long) FinderCacheUtil.getResult(finderPath, finderArgs,
                this);

        if (count == null) {
            StringBundler query = new StringBundler(2);

            query.append(_SQL_COUNT_USERREIMBURSEMENT_WHERE);

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
     * Caches the user reimbursement in the entity cache if it is enabled.
     *
     * @param userReimbursement the user reimbursement
     */
    @Override
    public void cacheResult(UserReimbursement userReimbursement) {
        EntityCacheUtil.putResult(UserReimbursementModelImpl.ENTITY_CACHE_ENABLED,
            UserReimbursementImpl.class, userReimbursement.getPrimaryKey(),
            userReimbursement);

        FinderCacheUtil.putResult(FINDER_PATH_FETCH_BY_USERID,
            new Object[] { userReimbursement.getUserId() }, userReimbursement);

        userReimbursement.resetOriginalValues();
    }

    /**
     * Caches the user reimbursements in the entity cache if it is enabled.
     *
     * @param userReimbursements the user reimbursements
     */
    @Override
    public void cacheResult(List<UserReimbursement> userReimbursements) {
        for (UserReimbursement userReimbursement : userReimbursements) {
            if (EntityCacheUtil.getResult(
                        UserReimbursementModelImpl.ENTITY_CACHE_ENABLED,
                        UserReimbursementImpl.class,
                        userReimbursement.getPrimaryKey()) == null) {
                cacheResult(userReimbursement);
            } else {
                userReimbursement.resetOriginalValues();
            }
        }
    }

    /**
     * Clears the cache for all user reimbursements.
     *
     * <p>
     * The {@link com.liferay.portal.kernel.dao.orm.EntityCache} and {@link com.liferay.portal.kernel.dao.orm.FinderCache} are both cleared by this method.
     * </p>
     */
    @Override
    public void clearCache() {
        if (_HIBERNATE_CACHE_USE_SECOND_LEVEL_CACHE) {
            CacheRegistryUtil.clear(UserReimbursementImpl.class.getName());
        }

        EntityCacheUtil.clearCache(UserReimbursementImpl.class.getName());

        FinderCacheUtil.clearCache(FINDER_CLASS_NAME_ENTITY);
        FinderCacheUtil.clearCache(FINDER_CLASS_NAME_LIST_WITH_PAGINATION);
        FinderCacheUtil.clearCache(FINDER_CLASS_NAME_LIST_WITHOUT_PAGINATION);
    }

    /**
     * Clears the cache for the user reimbursement.
     *
     * <p>
     * The {@link com.liferay.portal.kernel.dao.orm.EntityCache} and {@link com.liferay.portal.kernel.dao.orm.FinderCache} are both cleared by this method.
     * </p>
     */
    @Override
    public void clearCache(UserReimbursement userReimbursement) {
        EntityCacheUtil.removeResult(UserReimbursementModelImpl.ENTITY_CACHE_ENABLED,
            UserReimbursementImpl.class, userReimbursement.getPrimaryKey());

        FinderCacheUtil.clearCache(FINDER_CLASS_NAME_LIST_WITH_PAGINATION);
        FinderCacheUtil.clearCache(FINDER_CLASS_NAME_LIST_WITHOUT_PAGINATION);

        clearUniqueFindersCache(userReimbursement);
    }

    @Override
    public void clearCache(List<UserReimbursement> userReimbursements) {
        FinderCacheUtil.clearCache(FINDER_CLASS_NAME_LIST_WITH_PAGINATION);
        FinderCacheUtil.clearCache(FINDER_CLASS_NAME_LIST_WITHOUT_PAGINATION);

        for (UserReimbursement userReimbursement : userReimbursements) {
            EntityCacheUtil.removeResult(UserReimbursementModelImpl.ENTITY_CACHE_ENABLED,
                UserReimbursementImpl.class, userReimbursement.getPrimaryKey());

            clearUniqueFindersCache(userReimbursement);
        }
    }

    protected void cacheUniqueFindersCache(UserReimbursement userReimbursement) {
        if (userReimbursement.isNew()) {
            Object[] args = new Object[] { userReimbursement.getUserId() };

            FinderCacheUtil.putResult(FINDER_PATH_COUNT_BY_USERID, args,
                Long.valueOf(1));
            FinderCacheUtil.putResult(FINDER_PATH_FETCH_BY_USERID, args,
                userReimbursement);
        } else {
            UserReimbursementModelImpl userReimbursementModelImpl = (UserReimbursementModelImpl) userReimbursement;

            if ((userReimbursementModelImpl.getColumnBitmask() &
                    FINDER_PATH_FETCH_BY_USERID.getColumnBitmask()) != 0) {
                Object[] args = new Object[] { userReimbursement.getUserId() };

                FinderCacheUtil.putResult(FINDER_PATH_COUNT_BY_USERID, args,
                    Long.valueOf(1));
                FinderCacheUtil.putResult(FINDER_PATH_FETCH_BY_USERID, args,
                    userReimbursement);
            }
        }
    }

    protected void clearUniqueFindersCache(UserReimbursement userReimbursement) {
        UserReimbursementModelImpl userReimbursementModelImpl = (UserReimbursementModelImpl) userReimbursement;

        Object[] args = new Object[] { userReimbursement.getUserId() };

        FinderCacheUtil.removeResult(FINDER_PATH_COUNT_BY_USERID, args);
        FinderCacheUtil.removeResult(FINDER_PATH_FETCH_BY_USERID, args);

        if ((userReimbursementModelImpl.getColumnBitmask() &
                FINDER_PATH_FETCH_BY_USERID.getColumnBitmask()) != 0) {
            args = new Object[] { userReimbursementModelImpl.getOriginalUserId() };

            FinderCacheUtil.removeResult(FINDER_PATH_COUNT_BY_USERID, args);
            FinderCacheUtil.removeResult(FINDER_PATH_FETCH_BY_USERID, args);
        }
    }

    /**
     * Creates a new user reimbursement with the primary key. Does not add the user reimbursement to the database.
     *
     * @param id the primary key for the new user reimbursement
     * @return the new user reimbursement
     */
    @Override
    public UserReimbursement create(long id) {
        UserReimbursement userReimbursement = new UserReimbursementImpl();

        userReimbursement.setNew(true);
        userReimbursement.setPrimaryKey(id);

        return userReimbursement;
    }

    /**
     * Removes the user reimbursement with the primary key from the database. Also notifies the appropriate model listeners.
     *
     * @param id the primary key of the user reimbursement
     * @return the user reimbursement that was removed
     * @throws com.xebia.xifire.NoSuchUserReimbursementException if a user reimbursement with the primary key could not be found
     * @throws SystemException if a system exception occurred
     */
    @Override
    public UserReimbursement remove(long id)
        throws NoSuchUserReimbursementException, SystemException {
        return remove((Serializable) id);
    }

    /**
     * Removes the user reimbursement with the primary key from the database. Also notifies the appropriate model listeners.
     *
     * @param primaryKey the primary key of the user reimbursement
     * @return the user reimbursement that was removed
     * @throws com.xebia.xifire.NoSuchUserReimbursementException if a user reimbursement with the primary key could not be found
     * @throws SystemException if a system exception occurred
     */
    @Override
    public UserReimbursement remove(Serializable primaryKey)
        throws NoSuchUserReimbursementException, SystemException {
        Session session = null;

        try {
            session = openSession();

            UserReimbursement userReimbursement = (UserReimbursement) session.get(UserReimbursementImpl.class,
                    primaryKey);

            if (userReimbursement == null) {
                if (_log.isWarnEnabled()) {
                    _log.warn(_NO_SUCH_ENTITY_WITH_PRIMARY_KEY + primaryKey);
                }

                throw new NoSuchUserReimbursementException(_NO_SUCH_ENTITY_WITH_PRIMARY_KEY +
                    primaryKey);
            }

            return remove(userReimbursement);
        } catch (NoSuchUserReimbursementException nsee) {
            throw nsee;
        } catch (Exception e) {
            throw processException(e);
        } finally {
            closeSession(session);
        }
    }

    @Override
    protected UserReimbursement removeImpl(UserReimbursement userReimbursement)
        throws SystemException {
        userReimbursement = toUnwrappedModel(userReimbursement);

        Session session = null;

        try {
            session = openSession();

            if (!session.contains(userReimbursement)) {
                userReimbursement = (UserReimbursement) session.get(UserReimbursementImpl.class,
                        userReimbursement.getPrimaryKeyObj());
            }

            if (userReimbursement != null) {
                session.delete(userReimbursement);
            }
        } catch (Exception e) {
            throw processException(e);
        } finally {
            closeSession(session);
        }

        if (userReimbursement != null) {
            clearCache(userReimbursement);
        }

        return userReimbursement;
    }

    @Override
    public UserReimbursement updateImpl(
        com.xebia.xifire.model.UserReimbursement userReimbursement)
        throws SystemException {
        userReimbursement = toUnwrappedModel(userReimbursement);

        boolean isNew = userReimbursement.isNew();

        Session session = null;

        try {
            session = openSession();

            if (userReimbursement.isNew()) {
                session.save(userReimbursement);

                userReimbursement.setNew(false);
            } else {
                session.merge(userReimbursement);
            }
        } catch (Exception e) {
            throw processException(e);
        } finally {
            closeSession(session);
        }

        FinderCacheUtil.clearCache(FINDER_CLASS_NAME_LIST_WITH_PAGINATION);

        if (isNew || !UserReimbursementModelImpl.COLUMN_BITMASK_ENABLED) {
            FinderCacheUtil.clearCache(FINDER_CLASS_NAME_LIST_WITHOUT_PAGINATION);
        }

        EntityCacheUtil.putResult(UserReimbursementModelImpl.ENTITY_CACHE_ENABLED,
            UserReimbursementImpl.class, userReimbursement.getPrimaryKey(),
            userReimbursement);

        clearUniqueFindersCache(userReimbursement);
        cacheUniqueFindersCache(userReimbursement);

        return userReimbursement;
    }

    protected UserReimbursement toUnwrappedModel(
        UserReimbursement userReimbursement) {
        if (userReimbursement instanceof UserReimbursementImpl) {
            return userReimbursement;
        }

        UserReimbursementImpl userReimbursementImpl = new UserReimbursementImpl();

        userReimbursementImpl.setNew(userReimbursement.isNew());
        userReimbursementImpl.setPrimaryKey(userReimbursement.getPrimaryKey());

        userReimbursementImpl.setId(userReimbursement.getId());
        userReimbursementImpl.setCreateDate(userReimbursement.getCreateDate());
        userReimbursementImpl.setModifiedDate(userReimbursement.getModifiedDate());
        userReimbursementImpl.setUserId(userReimbursement.getUserId());
        userReimbursementImpl.setDescription(userReimbursement.getDescription());
        userReimbursementImpl.setStatus(userReimbursement.getStatus());

        return userReimbursementImpl;
    }

    /**
     * Returns the user reimbursement with the primary key or throws a {@link com.liferay.portal.NoSuchModelException} if it could not be found.
     *
     * @param primaryKey the primary key of the user reimbursement
     * @return the user reimbursement
     * @throws com.xebia.xifire.NoSuchUserReimbursementException if a user reimbursement with the primary key could not be found
     * @throws SystemException if a system exception occurred
     */
    @Override
    public UserReimbursement findByPrimaryKey(Serializable primaryKey)
        throws NoSuchUserReimbursementException, SystemException {
        UserReimbursement userReimbursement = fetchByPrimaryKey(primaryKey);

        if (userReimbursement == null) {
            if (_log.isWarnEnabled()) {
                _log.warn(_NO_SUCH_ENTITY_WITH_PRIMARY_KEY + primaryKey);
            }

            throw new NoSuchUserReimbursementException(_NO_SUCH_ENTITY_WITH_PRIMARY_KEY +
                primaryKey);
        }

        return userReimbursement;
    }

    /**
     * Returns the user reimbursement with the primary key or throws a {@link com.xebia.xifire.NoSuchUserReimbursementException} if it could not be found.
     *
     * @param id the primary key of the user reimbursement
     * @return the user reimbursement
     * @throws com.xebia.xifire.NoSuchUserReimbursementException if a user reimbursement with the primary key could not be found
     * @throws SystemException if a system exception occurred
     */
    @Override
    public UserReimbursement findByPrimaryKey(long id)
        throws NoSuchUserReimbursementException, SystemException {
        return findByPrimaryKey((Serializable) id);
    }

    /**
     * Returns the user reimbursement with the primary key or returns <code>null</code> if it could not be found.
     *
     * @param primaryKey the primary key of the user reimbursement
     * @return the user reimbursement, or <code>null</code> if a user reimbursement with the primary key could not be found
     * @throws SystemException if a system exception occurred
     */
    @Override
    public UserReimbursement fetchByPrimaryKey(Serializable primaryKey)
        throws SystemException {
        UserReimbursement userReimbursement = (UserReimbursement) EntityCacheUtil.getResult(UserReimbursementModelImpl.ENTITY_CACHE_ENABLED,
                UserReimbursementImpl.class, primaryKey);

        if (userReimbursement == _nullUserReimbursement) {
            return null;
        }

        if (userReimbursement == null) {
            Session session = null;

            try {
                session = openSession();

                userReimbursement = (UserReimbursement) session.get(UserReimbursementImpl.class,
                        primaryKey);

                if (userReimbursement != null) {
                    cacheResult(userReimbursement);
                } else {
                    EntityCacheUtil.putResult(UserReimbursementModelImpl.ENTITY_CACHE_ENABLED,
                        UserReimbursementImpl.class, primaryKey,
                        _nullUserReimbursement);
                }
            } catch (Exception e) {
                EntityCacheUtil.removeResult(UserReimbursementModelImpl.ENTITY_CACHE_ENABLED,
                    UserReimbursementImpl.class, primaryKey);

                throw processException(e);
            } finally {
                closeSession(session);
            }
        }

        return userReimbursement;
    }

    /**
     * Returns the user reimbursement with the primary key or returns <code>null</code> if it could not be found.
     *
     * @param id the primary key of the user reimbursement
     * @return the user reimbursement, or <code>null</code> if a user reimbursement with the primary key could not be found
     * @throws SystemException if a system exception occurred
     */
    @Override
    public UserReimbursement fetchByPrimaryKey(long id)
        throws SystemException {
        return fetchByPrimaryKey((Serializable) id);
    }

    /**
     * Returns all the user reimbursements.
     *
     * @return the user reimbursements
     * @throws SystemException if a system exception occurred
     */
    @Override
    public List<UserReimbursement> findAll() throws SystemException {
        return findAll(QueryUtil.ALL_POS, QueryUtil.ALL_POS, null);
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
    @Override
    public List<UserReimbursement> findAll(int start, int end)
        throws SystemException {
        return findAll(start, end, null);
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
    @Override
    public List<UserReimbursement> findAll(int start, int end,
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

        List<UserReimbursement> list = (List<UserReimbursement>) FinderCacheUtil.getResult(finderPath,
                finderArgs, this);

        if (list == null) {
            StringBundler query = null;
            String sql = null;

            if (orderByComparator != null) {
                query = new StringBundler(2 +
                        (orderByComparator.getOrderByFields().length * 3));

                query.append(_SQL_SELECT_USERREIMBURSEMENT);

                appendOrderByComparator(query, _ORDER_BY_ENTITY_ALIAS,
                    orderByComparator);

                sql = query.toString();
            } else {
                sql = _SQL_SELECT_USERREIMBURSEMENT;

                if (pagination) {
                    sql = sql.concat(UserReimbursementModelImpl.ORDER_BY_JPQL);
                }
            }

            Session session = null;

            try {
                session = openSession();

                Query q = session.createQuery(sql);

                if (!pagination) {
                    list = (List<UserReimbursement>) QueryUtil.list(q,
                            getDialect(), start, end, false);

                    Collections.sort(list);

                    list = new UnmodifiableList<UserReimbursement>(list);
                } else {
                    list = (List<UserReimbursement>) QueryUtil.list(q,
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
     * Removes all the user reimbursements from the database.
     *
     * @throws SystemException if a system exception occurred
     */
    @Override
    public void removeAll() throws SystemException {
        for (UserReimbursement userReimbursement : findAll()) {
            remove(userReimbursement);
        }
    }

    /**
     * Returns the number of user reimbursements.
     *
     * @return the number of user reimbursements
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

                Query q = session.createQuery(_SQL_COUNT_USERREIMBURSEMENT);

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
     * Initializes the user reimbursement persistence.
     */
    public void afterPropertiesSet() {
        String[] listenerClassNames = StringUtil.split(GetterUtil.getString(
                    com.liferay.util.service.ServiceProps.get(
                        "value.object.listener.com.xebia.xifire.model.UserReimbursement")));

        if (listenerClassNames.length > 0) {
            try {
                List<ModelListener<UserReimbursement>> listenersList = new ArrayList<ModelListener<UserReimbursement>>();

                for (String listenerClassName : listenerClassNames) {
                    listenersList.add((ModelListener<UserReimbursement>) InstanceFactory.newInstance(
                            getClassLoader(), listenerClassName));
                }

                listeners = listenersList.toArray(new ModelListener[listenersList.size()]);
            } catch (Exception e) {
                _log.error(e);
            }
        }
    }

    public void destroy() {
        EntityCacheUtil.removeCache(UserReimbursementImpl.class.getName());
        FinderCacheUtil.removeCache(FINDER_CLASS_NAME_ENTITY);
        FinderCacheUtil.removeCache(FINDER_CLASS_NAME_LIST_WITH_PAGINATION);
        FinderCacheUtil.removeCache(FINDER_CLASS_NAME_LIST_WITHOUT_PAGINATION);
    }
}
