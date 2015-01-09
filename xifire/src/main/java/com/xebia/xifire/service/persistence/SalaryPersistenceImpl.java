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

import com.xebia.xifire.NoSuchSalaryException;
import com.xebia.xifire.model.Salary;
import com.xebia.xifire.model.impl.SalaryImpl;
import com.xebia.xifire.model.impl.SalaryModelImpl;
import com.xebia.xifire.service.persistence.SalaryPersistence;

import java.io.Serializable;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Set;

/**
 * The persistence implementation for the salary service.
 *
 * <p>
 * Caching information and settings can be found in <code>portal.properties</code>
 * </p>
 *
 * @author Brian Wing Shun Chan
 * @see SalaryPersistence
 * @see SalaryUtil
 * @generated
 */
public class SalaryPersistenceImpl extends BasePersistenceImpl<Salary>
    implements SalaryPersistence {
    /*
     * NOTE FOR DEVELOPERS:
     *
     * Never modify or reference this class directly. Always use {@link SalaryUtil} to access the salary persistence. Modify <code>service.xml</code> and rerun ServiceBuilder to regenerate this class.
     */
    public static final String FINDER_CLASS_NAME_ENTITY = SalaryImpl.class.getName();
    public static final String FINDER_CLASS_NAME_LIST_WITH_PAGINATION = FINDER_CLASS_NAME_ENTITY +
        ".List1";
    public static final String FINDER_CLASS_NAME_LIST_WITHOUT_PAGINATION = FINDER_CLASS_NAME_ENTITY +
        ".List2";
    public static final FinderPath FINDER_PATH_WITH_PAGINATION_FIND_ALL = new FinderPath(SalaryModelImpl.ENTITY_CACHE_ENABLED,
            SalaryModelImpl.FINDER_CACHE_ENABLED, SalaryImpl.class,
            FINDER_CLASS_NAME_LIST_WITH_PAGINATION, "findAll", new String[0]);
    public static final FinderPath FINDER_PATH_WITHOUT_PAGINATION_FIND_ALL = new FinderPath(SalaryModelImpl.ENTITY_CACHE_ENABLED,
            SalaryModelImpl.FINDER_CACHE_ENABLED, SalaryImpl.class,
            FINDER_CLASS_NAME_LIST_WITHOUT_PAGINATION, "findAll", new String[0]);
    public static final FinderPath FINDER_PATH_COUNT_ALL = new FinderPath(SalaryModelImpl.ENTITY_CACHE_ENABLED,
            SalaryModelImpl.FINDER_CACHE_ENABLED, Long.class,
            FINDER_CLASS_NAME_LIST_WITHOUT_PAGINATION, "countAll", new String[0]);
    public static final FinderPath FINDER_PATH_FETCH_BY_USERIDMONTHANDYEAR = new FinderPath(SalaryModelImpl.ENTITY_CACHE_ENABLED,
            SalaryModelImpl.FINDER_CACHE_ENABLED, SalaryImpl.class,
            FINDER_CLASS_NAME_ENTITY, "fetchByUserIdMonthAndYear",
            new String[] {
                Long.class.getName(), Integer.class.getName(),
                Integer.class.getName()
            },
            SalaryModelImpl.USERID_COLUMN_BITMASK |
            SalaryModelImpl.SALARYMONTH_COLUMN_BITMASK |
            SalaryModelImpl.SALARYYEAR_COLUMN_BITMASK);
    public static final FinderPath FINDER_PATH_COUNT_BY_USERIDMONTHANDYEAR = new FinderPath(SalaryModelImpl.ENTITY_CACHE_ENABLED,
            SalaryModelImpl.FINDER_CACHE_ENABLED, Long.class,
            FINDER_CLASS_NAME_LIST_WITHOUT_PAGINATION,
            "countByUserIdMonthAndYear",
            new String[] {
                Long.class.getName(), Integer.class.getName(),
                Integer.class.getName()
            });
    private static final String _FINDER_COLUMN_USERIDMONTHANDYEAR_USERID_2 = "salary.userId = ? AND ";
    private static final String _FINDER_COLUMN_USERIDMONTHANDYEAR_SALARYMONTH_2 = "salary.salaryMonth = ? AND ";
    private static final String _FINDER_COLUMN_USERIDMONTHANDYEAR_SALARYYEAR_2 = "salary.salaryYear = ?";
    public static final FinderPath FINDER_PATH_FETCH_BY_USERIDYEAR = new FinderPath(SalaryModelImpl.ENTITY_CACHE_ENABLED,
            SalaryModelImpl.FINDER_CACHE_ENABLED, SalaryImpl.class,
            FINDER_CLASS_NAME_ENTITY, "fetchByUserIdYear",
            new String[] { Long.class.getName(), Integer.class.getName() },
            SalaryModelImpl.USERID_COLUMN_BITMASK |
            SalaryModelImpl.SALARYYEAR_COLUMN_BITMASK);
    public static final FinderPath FINDER_PATH_COUNT_BY_USERIDYEAR = new FinderPath(SalaryModelImpl.ENTITY_CACHE_ENABLED,
            SalaryModelImpl.FINDER_CACHE_ENABLED, Long.class,
            FINDER_CLASS_NAME_LIST_WITHOUT_PAGINATION, "countByUserIdYear",
            new String[] { Long.class.getName(), Integer.class.getName() });
    private static final String _FINDER_COLUMN_USERIDYEAR_USERID_2 = "salary.userId = ? AND ";
    private static final String _FINDER_COLUMN_USERIDYEAR_SALARYYEAR_2 = "salary.salaryYear = ?";
    public static final FinderPath FINDER_PATH_FETCH_BY_USERID = new FinderPath(SalaryModelImpl.ENTITY_CACHE_ENABLED,
            SalaryModelImpl.FINDER_CACHE_ENABLED, SalaryImpl.class,
            FINDER_CLASS_NAME_ENTITY, "fetchByUserId",
            new String[] { Long.class.getName() },
            SalaryModelImpl.USERID_COLUMN_BITMASK);
    public static final FinderPath FINDER_PATH_COUNT_BY_USERID = new FinderPath(SalaryModelImpl.ENTITY_CACHE_ENABLED,
            SalaryModelImpl.FINDER_CACHE_ENABLED, Long.class,
            FINDER_CLASS_NAME_LIST_WITHOUT_PAGINATION, "countByUserId",
            new String[] { Long.class.getName() });
    private static final String _FINDER_COLUMN_USERID_USERID_2 = "salary.userId = ?";
    private static final String _SQL_SELECT_SALARY = "SELECT salary FROM Salary salary";
    private static final String _SQL_SELECT_SALARY_WHERE = "SELECT salary FROM Salary salary WHERE ";
    private static final String _SQL_COUNT_SALARY = "SELECT COUNT(salary) FROM Salary salary";
    private static final String _SQL_COUNT_SALARY_WHERE = "SELECT COUNT(salary) FROM Salary salary WHERE ";
    private static final String _ORDER_BY_ENTITY_ALIAS = "salary.";
    private static final String _NO_SUCH_ENTITY_WITH_PRIMARY_KEY = "No Salary exists with the primary key ";
    private static final String _NO_SUCH_ENTITY_WITH_KEY = "No Salary exists with the key {";
    private static final boolean _HIBERNATE_CACHE_USE_SECOND_LEVEL_CACHE = GetterUtil.getBoolean(PropsUtil.get(
                PropsKeys.HIBERNATE_CACHE_USE_SECOND_LEVEL_CACHE));
    private static Log _log = LogFactoryUtil.getLog(SalaryPersistenceImpl.class);
    private static Set<String> _badColumnNames = SetUtil.fromArray(new String[] {
                "id"
            });
    private static Salary _nullSalary = new SalaryImpl() {
            @Override
            public Object clone() {
                return this;
            }

            @Override
            public CacheModel<Salary> toCacheModel() {
                return _nullSalaryCacheModel;
            }
        };

    private static CacheModel<Salary> _nullSalaryCacheModel = new CacheModel<Salary>() {
            @Override
            public Salary toEntityModel() {
                return _nullSalary;
            }
        };

    public SalaryPersistenceImpl() {
        setModelClass(Salary.class);
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
    @Override
    public Salary findByUserIdMonthAndYear(long userId, int salaryMonth,
        int salaryYear) throws NoSuchSalaryException, SystemException {
        Salary salary = fetchByUserIdMonthAndYear(userId, salaryMonth,
                salaryYear);

        if (salary == null) {
            StringBundler msg = new StringBundler(8);

            msg.append(_NO_SUCH_ENTITY_WITH_KEY);

            msg.append("userId=");
            msg.append(userId);

            msg.append(", salaryMonth=");
            msg.append(salaryMonth);

            msg.append(", salaryYear=");
            msg.append(salaryYear);

            msg.append(StringPool.CLOSE_CURLY_BRACE);

            if (_log.isWarnEnabled()) {
                _log.warn(msg.toString());
            }

            throw new NoSuchSalaryException(msg.toString());
        }

        return salary;
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
    @Override
    public Salary fetchByUserIdMonthAndYear(long userId, int salaryMonth,
        int salaryYear) throws SystemException {
        return fetchByUserIdMonthAndYear(userId, salaryMonth, salaryYear, true);
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
    @Override
    public Salary fetchByUserIdMonthAndYear(long userId, int salaryMonth,
        int salaryYear, boolean retrieveFromCache) throws SystemException {
        Object[] finderArgs = new Object[] { userId, salaryMonth, salaryYear };

        Object result = null;

        if (retrieveFromCache) {
            result = FinderCacheUtil.getResult(FINDER_PATH_FETCH_BY_USERIDMONTHANDYEAR,
                    finderArgs, this);
        }

        if (result instanceof Salary) {
            Salary salary = (Salary) result;

            if ((userId != salary.getUserId()) ||
                    (salaryMonth != salary.getSalaryMonth()) ||
                    (salaryYear != salary.getSalaryYear())) {
                result = null;
            }
        }

        if (result == null) {
            StringBundler query = new StringBundler(5);

            query.append(_SQL_SELECT_SALARY_WHERE);

            query.append(_FINDER_COLUMN_USERIDMONTHANDYEAR_USERID_2);

            query.append(_FINDER_COLUMN_USERIDMONTHANDYEAR_SALARYMONTH_2);

            query.append(_FINDER_COLUMN_USERIDMONTHANDYEAR_SALARYYEAR_2);

            String sql = query.toString();

            Session session = null;

            try {
                session = openSession();

                Query q = session.createQuery(sql);

                QueryPos qPos = QueryPos.getInstance(q);

                qPos.add(userId);

                qPos.add(salaryMonth);

                qPos.add(salaryYear);

                List<Salary> list = q.list();

                if (list.isEmpty()) {
                    FinderCacheUtil.putResult(FINDER_PATH_FETCH_BY_USERIDMONTHANDYEAR,
                        finderArgs, list);
                } else {
                    Salary salary = list.get(0);

                    result = salary;

                    cacheResult(salary);

                    if ((salary.getUserId() != userId) ||
                            (salary.getSalaryMonth() != salaryMonth) ||
                            (salary.getSalaryYear() != salaryYear)) {
                        FinderCacheUtil.putResult(FINDER_PATH_FETCH_BY_USERIDMONTHANDYEAR,
                            finderArgs, salary);
                    }
                }
            } catch (Exception e) {
                FinderCacheUtil.removeResult(FINDER_PATH_FETCH_BY_USERIDMONTHANDYEAR,
                    finderArgs);

                throw processException(e);
            } finally {
                closeSession(session);
            }
        }

        if (result instanceof List<?>) {
            return null;
        } else {
            return (Salary) result;
        }
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
    @Override
    public Salary removeByUserIdMonthAndYear(long userId, int salaryMonth,
        int salaryYear) throws NoSuchSalaryException, SystemException {
        Salary salary = findByUserIdMonthAndYear(userId, salaryMonth, salaryYear);

        return remove(salary);
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
    @Override
    public int countByUserIdMonthAndYear(long userId, int salaryMonth,
        int salaryYear) throws SystemException {
        FinderPath finderPath = FINDER_PATH_COUNT_BY_USERIDMONTHANDYEAR;

        Object[] finderArgs = new Object[] { userId, salaryMonth, salaryYear };

        Long count = (Long) FinderCacheUtil.getResult(finderPath, finderArgs,
                this);

        if (count == null) {
            StringBundler query = new StringBundler(4);

            query.append(_SQL_COUNT_SALARY_WHERE);

            query.append(_FINDER_COLUMN_USERIDMONTHANDYEAR_USERID_2);

            query.append(_FINDER_COLUMN_USERIDMONTHANDYEAR_SALARYMONTH_2);

            query.append(_FINDER_COLUMN_USERIDMONTHANDYEAR_SALARYYEAR_2);

            String sql = query.toString();

            Session session = null;

            try {
                session = openSession();

                Query q = session.createQuery(sql);

                QueryPos qPos = QueryPos.getInstance(q);

                qPos.add(userId);

                qPos.add(salaryMonth);

                qPos.add(salaryYear);

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
     * Returns the salary where userId = &#63; and salaryYear = &#63; or throws a {@link com.xebia.xifire.NoSuchSalaryException} if it could not be found.
     *
     * @param userId the user ID
     * @param salaryYear the salary year
     * @return the matching salary
     * @throws com.xebia.xifire.NoSuchSalaryException if a matching salary could not be found
     * @throws SystemException if a system exception occurred
     */
    @Override
    public Salary findByUserIdYear(long userId, int salaryYear)
        throws NoSuchSalaryException, SystemException {
        Salary salary = fetchByUserIdYear(userId, salaryYear);

        if (salary == null) {
            StringBundler msg = new StringBundler(6);

            msg.append(_NO_SUCH_ENTITY_WITH_KEY);

            msg.append("userId=");
            msg.append(userId);

            msg.append(", salaryYear=");
            msg.append(salaryYear);

            msg.append(StringPool.CLOSE_CURLY_BRACE);

            if (_log.isWarnEnabled()) {
                _log.warn(msg.toString());
            }

            throw new NoSuchSalaryException(msg.toString());
        }

        return salary;
    }

    /**
     * Returns the salary where userId = &#63; and salaryYear = &#63; or returns <code>null</code> if it could not be found. Uses the finder cache.
     *
     * @param userId the user ID
     * @param salaryYear the salary year
     * @return the matching salary, or <code>null</code> if a matching salary could not be found
     * @throws SystemException if a system exception occurred
     */
    @Override
    public Salary fetchByUserIdYear(long userId, int salaryYear)
        throws SystemException {
        return fetchByUserIdYear(userId, salaryYear, true);
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
    @Override
    public Salary fetchByUserIdYear(long userId, int salaryYear,
        boolean retrieveFromCache) throws SystemException {
        Object[] finderArgs = new Object[] { userId, salaryYear };

        Object result = null;

        if (retrieveFromCache) {
            result = FinderCacheUtil.getResult(FINDER_PATH_FETCH_BY_USERIDYEAR,
                    finderArgs, this);
        }

        if (result instanceof Salary) {
            Salary salary = (Salary) result;

            if ((userId != salary.getUserId()) ||
                    (salaryYear != salary.getSalaryYear())) {
                result = null;
            }
        }

        if (result == null) {
            StringBundler query = new StringBundler(4);

            query.append(_SQL_SELECT_SALARY_WHERE);

            query.append(_FINDER_COLUMN_USERIDYEAR_USERID_2);

            query.append(_FINDER_COLUMN_USERIDYEAR_SALARYYEAR_2);

            String sql = query.toString();

            Session session = null;

            try {
                session = openSession();

                Query q = session.createQuery(sql);

                QueryPos qPos = QueryPos.getInstance(q);

                qPos.add(userId);

                qPos.add(salaryYear);

                List<Salary> list = q.list();

                if (list.isEmpty()) {
                    FinderCacheUtil.putResult(FINDER_PATH_FETCH_BY_USERIDYEAR,
                        finderArgs, list);
                } else {
                    Salary salary = list.get(0);

                    result = salary;

                    cacheResult(salary);

                    if ((salary.getUserId() != userId) ||
                            (salary.getSalaryYear() != salaryYear)) {
                        FinderCacheUtil.putResult(FINDER_PATH_FETCH_BY_USERIDYEAR,
                            finderArgs, salary);
                    }
                }
            } catch (Exception e) {
                FinderCacheUtil.removeResult(FINDER_PATH_FETCH_BY_USERIDYEAR,
                    finderArgs);

                throw processException(e);
            } finally {
                closeSession(session);
            }
        }

        if (result instanceof List<?>) {
            return null;
        } else {
            return (Salary) result;
        }
    }

    /**
     * Removes the salary where userId = &#63; and salaryYear = &#63; from the database.
     *
     * @param userId the user ID
     * @param salaryYear the salary year
     * @return the salary that was removed
     * @throws SystemException if a system exception occurred
     */
    @Override
    public Salary removeByUserIdYear(long userId, int salaryYear)
        throws NoSuchSalaryException, SystemException {
        Salary salary = findByUserIdYear(userId, salaryYear);

        return remove(salary);
    }

    /**
     * Returns the number of salaries where userId = &#63; and salaryYear = &#63;.
     *
     * @param userId the user ID
     * @param salaryYear the salary year
     * @return the number of matching salaries
     * @throws SystemException if a system exception occurred
     */
    @Override
    public int countByUserIdYear(long userId, int salaryYear)
        throws SystemException {
        FinderPath finderPath = FINDER_PATH_COUNT_BY_USERIDYEAR;

        Object[] finderArgs = new Object[] { userId, salaryYear };

        Long count = (Long) FinderCacheUtil.getResult(finderPath, finderArgs,
                this);

        if (count == null) {
            StringBundler query = new StringBundler(3);

            query.append(_SQL_COUNT_SALARY_WHERE);

            query.append(_FINDER_COLUMN_USERIDYEAR_USERID_2);

            query.append(_FINDER_COLUMN_USERIDYEAR_SALARYYEAR_2);

            String sql = query.toString();

            Session session = null;

            try {
                session = openSession();

                Query q = session.createQuery(sql);

                QueryPos qPos = QueryPos.getInstance(q);

                qPos.add(userId);

                qPos.add(salaryYear);

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
     * Returns the salary where userId = &#63; or throws a {@link com.xebia.xifire.NoSuchSalaryException} if it could not be found.
     *
     * @param userId the user ID
     * @return the matching salary
     * @throws com.xebia.xifire.NoSuchSalaryException if a matching salary could not be found
     * @throws SystemException if a system exception occurred
     */
    @Override
    public Salary findByUserId(long userId)
        throws NoSuchSalaryException, SystemException {
        Salary salary = fetchByUserId(userId);

        if (salary == null) {
            StringBundler msg = new StringBundler(4);

            msg.append(_NO_SUCH_ENTITY_WITH_KEY);

            msg.append("userId=");
            msg.append(userId);

            msg.append(StringPool.CLOSE_CURLY_BRACE);

            if (_log.isWarnEnabled()) {
                _log.warn(msg.toString());
            }

            throw new NoSuchSalaryException(msg.toString());
        }

        return salary;
    }

    /**
     * Returns the salary where userId = &#63; or returns <code>null</code> if it could not be found. Uses the finder cache.
     *
     * @param userId the user ID
     * @return the matching salary, or <code>null</code> if a matching salary could not be found
     * @throws SystemException if a system exception occurred
     */
    @Override
    public Salary fetchByUserId(long userId) throws SystemException {
        return fetchByUserId(userId, true);
    }

    /**
     * Returns the salary where userId = &#63; or returns <code>null</code> if it could not be found, optionally using the finder cache.
     *
     * @param userId the user ID
     * @param retrieveFromCache whether to use the finder cache
     * @return the matching salary, or <code>null</code> if a matching salary could not be found
     * @throws SystemException if a system exception occurred
     */
    @Override
    public Salary fetchByUserId(long userId, boolean retrieveFromCache)
        throws SystemException {
        Object[] finderArgs = new Object[] { userId };

        Object result = null;

        if (retrieveFromCache) {
            result = FinderCacheUtil.getResult(FINDER_PATH_FETCH_BY_USERID,
                    finderArgs, this);
        }

        if (result instanceof Salary) {
            Salary salary = (Salary) result;

            if ((userId != salary.getUserId())) {
                result = null;
            }
        }

        if (result == null) {
            StringBundler query = new StringBundler(3);

            query.append(_SQL_SELECT_SALARY_WHERE);

            query.append(_FINDER_COLUMN_USERID_USERID_2);

            String sql = query.toString();

            Session session = null;

            try {
                session = openSession();

                Query q = session.createQuery(sql);

                QueryPos qPos = QueryPos.getInstance(q);

                qPos.add(userId);

                List<Salary> list = q.list();

                if (list.isEmpty()) {
                    FinderCacheUtil.putResult(FINDER_PATH_FETCH_BY_USERID,
                        finderArgs, list);
                } else {
                    Salary salary = list.get(0);

                    result = salary;

                    cacheResult(salary);

                    if ((salary.getUserId() != userId)) {
                        FinderCacheUtil.putResult(FINDER_PATH_FETCH_BY_USERID,
                            finderArgs, salary);
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
            return (Salary) result;
        }
    }

    /**
     * Removes the salary where userId = &#63; from the database.
     *
     * @param userId the user ID
     * @return the salary that was removed
     * @throws SystemException if a system exception occurred
     */
    @Override
    public Salary removeByUserId(long userId)
        throws NoSuchSalaryException, SystemException {
        Salary salary = findByUserId(userId);

        return remove(salary);
    }

    /**
     * Returns the number of salaries where userId = &#63;.
     *
     * @param userId the user ID
     * @return the number of matching salaries
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

            query.append(_SQL_COUNT_SALARY_WHERE);

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
     * Caches the salary in the entity cache if it is enabled.
     *
     * @param salary the salary
     */
    @Override
    public void cacheResult(Salary salary) {
        EntityCacheUtil.putResult(SalaryModelImpl.ENTITY_CACHE_ENABLED,
            SalaryImpl.class, salary.getPrimaryKey(), salary);

        FinderCacheUtil.putResult(FINDER_PATH_FETCH_BY_USERIDMONTHANDYEAR,
            new Object[] {
                salary.getUserId(), salary.getSalaryMonth(),
                salary.getSalaryYear()
            }, salary);

        FinderCacheUtil.putResult(FINDER_PATH_FETCH_BY_USERIDYEAR,
            new Object[] { salary.getUserId(), salary.getSalaryYear() }, salary);

        FinderCacheUtil.putResult(FINDER_PATH_FETCH_BY_USERID,
            new Object[] { salary.getUserId() }, salary);

        salary.resetOriginalValues();
    }

    /**
     * Caches the salaries in the entity cache if it is enabled.
     *
     * @param salaries the salaries
     */
    @Override
    public void cacheResult(List<Salary> salaries) {
        for (Salary salary : salaries) {
            if (EntityCacheUtil.getResult(
                        SalaryModelImpl.ENTITY_CACHE_ENABLED, SalaryImpl.class,
                        salary.getPrimaryKey()) == null) {
                cacheResult(salary);
            } else {
                salary.resetOriginalValues();
            }
        }
    }

    /**
     * Clears the cache for all salaries.
     *
     * <p>
     * The {@link com.liferay.portal.kernel.dao.orm.EntityCache} and {@link com.liferay.portal.kernel.dao.orm.FinderCache} are both cleared by this method.
     * </p>
     */
    @Override
    public void clearCache() {
        if (_HIBERNATE_CACHE_USE_SECOND_LEVEL_CACHE) {
            CacheRegistryUtil.clear(SalaryImpl.class.getName());
        }

        EntityCacheUtil.clearCache(SalaryImpl.class.getName());

        FinderCacheUtil.clearCache(FINDER_CLASS_NAME_ENTITY);
        FinderCacheUtil.clearCache(FINDER_CLASS_NAME_LIST_WITH_PAGINATION);
        FinderCacheUtil.clearCache(FINDER_CLASS_NAME_LIST_WITHOUT_PAGINATION);
    }

    /**
     * Clears the cache for the salary.
     *
     * <p>
     * The {@link com.liferay.portal.kernel.dao.orm.EntityCache} and {@link com.liferay.portal.kernel.dao.orm.FinderCache} are both cleared by this method.
     * </p>
     */
    @Override
    public void clearCache(Salary salary) {
        EntityCacheUtil.removeResult(SalaryModelImpl.ENTITY_CACHE_ENABLED,
            SalaryImpl.class, salary.getPrimaryKey());

        FinderCacheUtil.clearCache(FINDER_CLASS_NAME_LIST_WITH_PAGINATION);
        FinderCacheUtil.clearCache(FINDER_CLASS_NAME_LIST_WITHOUT_PAGINATION);

        clearUniqueFindersCache(salary);
    }

    @Override
    public void clearCache(List<Salary> salaries) {
        FinderCacheUtil.clearCache(FINDER_CLASS_NAME_LIST_WITH_PAGINATION);
        FinderCacheUtil.clearCache(FINDER_CLASS_NAME_LIST_WITHOUT_PAGINATION);

        for (Salary salary : salaries) {
            EntityCacheUtil.removeResult(SalaryModelImpl.ENTITY_CACHE_ENABLED,
                SalaryImpl.class, salary.getPrimaryKey());

            clearUniqueFindersCache(salary);
        }
    }

    protected void cacheUniqueFindersCache(Salary salary) {
        if (salary.isNew()) {
            Object[] args = new Object[] {
                    salary.getUserId(), salary.getSalaryMonth(),
                    salary.getSalaryYear()
                };

            FinderCacheUtil.putResult(FINDER_PATH_COUNT_BY_USERIDMONTHANDYEAR,
                args, Long.valueOf(1));
            FinderCacheUtil.putResult(FINDER_PATH_FETCH_BY_USERIDMONTHANDYEAR,
                args, salary);

            args = new Object[] { salary.getUserId(), salary.getSalaryYear() };

            FinderCacheUtil.putResult(FINDER_PATH_COUNT_BY_USERIDYEAR, args,
                Long.valueOf(1));
            FinderCacheUtil.putResult(FINDER_PATH_FETCH_BY_USERIDYEAR, args,
                salary);

            args = new Object[] { salary.getUserId() };

            FinderCacheUtil.putResult(FINDER_PATH_COUNT_BY_USERID, args,
                Long.valueOf(1));
            FinderCacheUtil.putResult(FINDER_PATH_FETCH_BY_USERID, args, salary);
        } else {
            SalaryModelImpl salaryModelImpl = (SalaryModelImpl) salary;

            if ((salaryModelImpl.getColumnBitmask() &
                    FINDER_PATH_FETCH_BY_USERIDMONTHANDYEAR.getColumnBitmask()) != 0) {
                Object[] args = new Object[] {
                        salary.getUserId(), salary.getSalaryMonth(),
                        salary.getSalaryYear()
                    };

                FinderCacheUtil.putResult(FINDER_PATH_COUNT_BY_USERIDMONTHANDYEAR,
                    args, Long.valueOf(1));
                FinderCacheUtil.putResult(FINDER_PATH_FETCH_BY_USERIDMONTHANDYEAR,
                    args, salary);
            }

            if ((salaryModelImpl.getColumnBitmask() &
                    FINDER_PATH_FETCH_BY_USERIDYEAR.getColumnBitmask()) != 0) {
                Object[] args = new Object[] {
                        salary.getUserId(), salary.getSalaryYear()
                    };

                FinderCacheUtil.putResult(FINDER_PATH_COUNT_BY_USERIDYEAR,
                    args, Long.valueOf(1));
                FinderCacheUtil.putResult(FINDER_PATH_FETCH_BY_USERIDYEAR,
                    args, salary);
            }

            if ((salaryModelImpl.getColumnBitmask() &
                    FINDER_PATH_FETCH_BY_USERID.getColumnBitmask()) != 0) {
                Object[] args = new Object[] { salary.getUserId() };

                FinderCacheUtil.putResult(FINDER_PATH_COUNT_BY_USERID, args,
                    Long.valueOf(1));
                FinderCacheUtil.putResult(FINDER_PATH_FETCH_BY_USERID, args,
                    salary);
            }
        }
    }

    protected void clearUniqueFindersCache(Salary salary) {
        SalaryModelImpl salaryModelImpl = (SalaryModelImpl) salary;

        Object[] args = new Object[] {
                salary.getUserId(), salary.getSalaryMonth(),
                salary.getSalaryYear()
            };

        FinderCacheUtil.removeResult(FINDER_PATH_COUNT_BY_USERIDMONTHANDYEAR,
            args);
        FinderCacheUtil.removeResult(FINDER_PATH_FETCH_BY_USERIDMONTHANDYEAR,
            args);

        if ((salaryModelImpl.getColumnBitmask() &
                FINDER_PATH_FETCH_BY_USERIDMONTHANDYEAR.getColumnBitmask()) != 0) {
            args = new Object[] {
                    salaryModelImpl.getOriginalUserId(),
                    salaryModelImpl.getOriginalSalaryMonth(),
                    salaryModelImpl.getOriginalSalaryYear()
                };

            FinderCacheUtil.removeResult(FINDER_PATH_COUNT_BY_USERIDMONTHANDYEAR,
                args);
            FinderCacheUtil.removeResult(FINDER_PATH_FETCH_BY_USERIDMONTHANDYEAR,
                args);
        }

        args = new Object[] { salary.getUserId(), salary.getSalaryYear() };

        FinderCacheUtil.removeResult(FINDER_PATH_COUNT_BY_USERIDYEAR, args);
        FinderCacheUtil.removeResult(FINDER_PATH_FETCH_BY_USERIDYEAR, args);

        if ((salaryModelImpl.getColumnBitmask() &
                FINDER_PATH_FETCH_BY_USERIDYEAR.getColumnBitmask()) != 0) {
            args = new Object[] {
                    salaryModelImpl.getOriginalUserId(),
                    salaryModelImpl.getOriginalSalaryYear()
                };

            FinderCacheUtil.removeResult(FINDER_PATH_COUNT_BY_USERIDYEAR, args);
            FinderCacheUtil.removeResult(FINDER_PATH_FETCH_BY_USERIDYEAR, args);
        }

        args = new Object[] { salary.getUserId() };

        FinderCacheUtil.removeResult(FINDER_PATH_COUNT_BY_USERID, args);
        FinderCacheUtil.removeResult(FINDER_PATH_FETCH_BY_USERID, args);

        if ((salaryModelImpl.getColumnBitmask() &
                FINDER_PATH_FETCH_BY_USERID.getColumnBitmask()) != 0) {
            args = new Object[] { salaryModelImpl.getOriginalUserId() };

            FinderCacheUtil.removeResult(FINDER_PATH_COUNT_BY_USERID, args);
            FinderCacheUtil.removeResult(FINDER_PATH_FETCH_BY_USERID, args);
        }
    }

    /**
     * Creates a new salary with the primary key. Does not add the salary to the database.
     *
     * @param id the primary key for the new salary
     * @return the new salary
     */
    @Override
    public Salary create(long id) {
        Salary salary = new SalaryImpl();

        salary.setNew(true);
        salary.setPrimaryKey(id);

        return salary;
    }

    /**
     * Removes the salary with the primary key from the database. Also notifies the appropriate model listeners.
     *
     * @param id the primary key of the salary
     * @return the salary that was removed
     * @throws com.xebia.xifire.NoSuchSalaryException if a salary with the primary key could not be found
     * @throws SystemException if a system exception occurred
     */
    @Override
    public Salary remove(long id) throws NoSuchSalaryException, SystemException {
        return remove((Serializable) id);
    }

    /**
     * Removes the salary with the primary key from the database. Also notifies the appropriate model listeners.
     *
     * @param primaryKey the primary key of the salary
     * @return the salary that was removed
     * @throws com.xebia.xifire.NoSuchSalaryException if a salary with the primary key could not be found
     * @throws SystemException if a system exception occurred
     */
    @Override
    public Salary remove(Serializable primaryKey)
        throws NoSuchSalaryException, SystemException {
        Session session = null;

        try {
            session = openSession();

            Salary salary = (Salary) session.get(SalaryImpl.class, primaryKey);

            if (salary == null) {
                if (_log.isWarnEnabled()) {
                    _log.warn(_NO_SUCH_ENTITY_WITH_PRIMARY_KEY + primaryKey);
                }

                throw new NoSuchSalaryException(_NO_SUCH_ENTITY_WITH_PRIMARY_KEY +
                    primaryKey);
            }

            return remove(salary);
        } catch (NoSuchSalaryException nsee) {
            throw nsee;
        } catch (Exception e) {
            throw processException(e);
        } finally {
            closeSession(session);
        }
    }

    @Override
    protected Salary removeImpl(Salary salary) throws SystemException {
        salary = toUnwrappedModel(salary);

        Session session = null;

        try {
            session = openSession();

            if (!session.contains(salary)) {
                salary = (Salary) session.get(SalaryImpl.class,
                        salary.getPrimaryKeyObj());
            }

            if (salary != null) {
                session.delete(salary);
            }
        } catch (Exception e) {
            throw processException(e);
        } finally {
            closeSession(session);
        }

        if (salary != null) {
            clearCache(salary);
        }

        return salary;
    }

    @Override
    public Salary updateImpl(com.xebia.xifire.model.Salary salary)
        throws SystemException {
        salary = toUnwrappedModel(salary);

        boolean isNew = salary.isNew();

        Session session = null;

        try {
            session = openSession();

            if (salary.isNew()) {
                session.save(salary);

                salary.setNew(false);
            } else {
                session.merge(salary);
            }
        } catch (Exception e) {
            throw processException(e);
        } finally {
            closeSession(session);
        }

        FinderCacheUtil.clearCache(FINDER_CLASS_NAME_LIST_WITH_PAGINATION);

        if (isNew || !SalaryModelImpl.COLUMN_BITMASK_ENABLED) {
            FinderCacheUtil.clearCache(FINDER_CLASS_NAME_LIST_WITHOUT_PAGINATION);
        }

        EntityCacheUtil.putResult(SalaryModelImpl.ENTITY_CACHE_ENABLED,
            SalaryImpl.class, salary.getPrimaryKey(), salary);

        clearUniqueFindersCache(salary);
        cacheUniqueFindersCache(salary);

        return salary;
    }

    protected Salary toUnwrappedModel(Salary salary) {
        if (salary instanceof SalaryImpl) {
            return salary;
        }

        SalaryImpl salaryImpl = new SalaryImpl();

        salaryImpl.setNew(salary.isNew());
        salaryImpl.setPrimaryKey(salary.getPrimaryKey());

        salaryImpl.setId(salary.getId());
        salaryImpl.setUserId(salary.getUserId());
        salaryImpl.setSalaryMonth(salary.getSalaryMonth());
        salaryImpl.setSalaryYear(salary.getSalaryYear());
        salaryImpl.setBasic(salary.getBasic());
        salaryImpl.setArrears(salary.getArrears());
        salaryImpl.setOthers(salary.getOthers());
        salaryImpl.setTds(salary.getTds());
        salaryImpl.setLta(salary.getLta());
        salaryImpl.setHRA(salary.getHRA());
        salaryImpl.setSpecialAllowance(salary.getSpecialAllowance());
        salaryImpl.setAttireAllowance(salary.getAttireAllowance());
        salaryImpl.setFoodAllowance(salary.getFoodAllowance());
        salaryImpl.setEducationCess(salary.getEducationCess());
        salaryImpl.setPf(salary.getPf());
        salaryImpl.setEpf(salary.getEpf());
        salaryImpl.setLaborWelfare(salary.getLaborWelfare());
        salaryImpl.setMediclaim(salary.getMediclaim());
        salaryImpl.setOtherDeduction(salary.getOtherDeduction());

        return salaryImpl;
    }

    /**
     * Returns the salary with the primary key or throws a {@link com.liferay.portal.NoSuchModelException} if it could not be found.
     *
     * @param primaryKey the primary key of the salary
     * @return the salary
     * @throws com.xebia.xifire.NoSuchSalaryException if a salary with the primary key could not be found
     * @throws SystemException if a system exception occurred
     */
    @Override
    public Salary findByPrimaryKey(Serializable primaryKey)
        throws NoSuchSalaryException, SystemException {
        Salary salary = fetchByPrimaryKey(primaryKey);

        if (salary == null) {
            if (_log.isWarnEnabled()) {
                _log.warn(_NO_SUCH_ENTITY_WITH_PRIMARY_KEY + primaryKey);
            }

            throw new NoSuchSalaryException(_NO_SUCH_ENTITY_WITH_PRIMARY_KEY +
                primaryKey);
        }

        return salary;
    }

    /**
     * Returns the salary with the primary key or throws a {@link com.xebia.xifire.NoSuchSalaryException} if it could not be found.
     *
     * @param id the primary key of the salary
     * @return the salary
     * @throws com.xebia.xifire.NoSuchSalaryException if a salary with the primary key could not be found
     * @throws SystemException if a system exception occurred
     */
    @Override
    public Salary findByPrimaryKey(long id)
        throws NoSuchSalaryException, SystemException {
        return findByPrimaryKey((Serializable) id);
    }

    /**
     * Returns the salary with the primary key or returns <code>null</code> if it could not be found.
     *
     * @param primaryKey the primary key of the salary
     * @return the salary, or <code>null</code> if a salary with the primary key could not be found
     * @throws SystemException if a system exception occurred
     */
    @Override
    public Salary fetchByPrimaryKey(Serializable primaryKey)
        throws SystemException {
        Salary salary = (Salary) EntityCacheUtil.getResult(SalaryModelImpl.ENTITY_CACHE_ENABLED,
                SalaryImpl.class, primaryKey);

        if (salary == _nullSalary) {
            return null;
        }

        if (salary == null) {
            Session session = null;

            try {
                session = openSession();

                salary = (Salary) session.get(SalaryImpl.class, primaryKey);

                if (salary != null) {
                    cacheResult(salary);
                } else {
                    EntityCacheUtil.putResult(SalaryModelImpl.ENTITY_CACHE_ENABLED,
                        SalaryImpl.class, primaryKey, _nullSalary);
                }
            } catch (Exception e) {
                EntityCacheUtil.removeResult(SalaryModelImpl.ENTITY_CACHE_ENABLED,
                    SalaryImpl.class, primaryKey);

                throw processException(e);
            } finally {
                closeSession(session);
            }
        }

        return salary;
    }

    /**
     * Returns the salary with the primary key or returns <code>null</code> if it could not be found.
     *
     * @param id the primary key of the salary
     * @return the salary, or <code>null</code> if a salary with the primary key could not be found
     * @throws SystemException if a system exception occurred
     */
    @Override
    public Salary fetchByPrimaryKey(long id) throws SystemException {
        return fetchByPrimaryKey((Serializable) id);
    }

    /**
     * Returns all the salaries.
     *
     * @return the salaries
     * @throws SystemException if a system exception occurred
     */
    @Override
    public List<Salary> findAll() throws SystemException {
        return findAll(QueryUtil.ALL_POS, QueryUtil.ALL_POS, null);
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
    @Override
    public List<Salary> findAll(int start, int end) throws SystemException {
        return findAll(start, end, null);
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
    @Override
    public List<Salary> findAll(int start, int end,
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

        List<Salary> list = (List<Salary>) FinderCacheUtil.getResult(finderPath,
                finderArgs, this);

        if (list == null) {
            StringBundler query = null;
            String sql = null;

            if (orderByComparator != null) {
                query = new StringBundler(2 +
                        (orderByComparator.getOrderByFields().length * 3));

                query.append(_SQL_SELECT_SALARY);

                appendOrderByComparator(query, _ORDER_BY_ENTITY_ALIAS,
                    orderByComparator);

                sql = query.toString();
            } else {
                sql = _SQL_SELECT_SALARY;

                if (pagination) {
                    sql = sql.concat(SalaryModelImpl.ORDER_BY_JPQL);
                }
            }

            Session session = null;

            try {
                session = openSession();

                Query q = session.createQuery(sql);

                if (!pagination) {
                    list = (List<Salary>) QueryUtil.list(q, getDialect(),
                            start, end, false);

                    Collections.sort(list);

                    list = new UnmodifiableList<Salary>(list);
                } else {
                    list = (List<Salary>) QueryUtil.list(q, getDialect(),
                            start, end);
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
     * Removes all the salaries from the database.
     *
     * @throws SystemException if a system exception occurred
     */
    @Override
    public void removeAll() throws SystemException {
        for (Salary salary : findAll()) {
            remove(salary);
        }
    }

    /**
     * Returns the number of salaries.
     *
     * @return the number of salaries
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

                Query q = session.createQuery(_SQL_COUNT_SALARY);

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
     * Initializes the salary persistence.
     */
    public void afterPropertiesSet() {
        String[] listenerClassNames = StringUtil.split(GetterUtil.getString(
                    com.liferay.util.service.ServiceProps.get(
                        "value.object.listener.com.xebia.xifire.model.Salary")));

        if (listenerClassNames.length > 0) {
            try {
                List<ModelListener<Salary>> listenersList = new ArrayList<ModelListener<Salary>>();

                for (String listenerClassName : listenerClassNames) {
                    listenersList.add((ModelListener<Salary>) InstanceFactory.newInstance(
                            getClassLoader(), listenerClassName));
                }

                listeners = listenersList.toArray(new ModelListener[listenersList.size()]);
            } catch (Exception e) {
                _log.error(e);
            }
        }
    }

    public void destroy() {
        EntityCacheUtil.removeCache(SalaryImpl.class.getName());
        FinderCacheUtil.removeCache(FINDER_CLASS_NAME_ENTITY);
        FinderCacheUtil.removeCache(FINDER_CLASS_NAME_LIST_WITH_PAGINATION);
        FinderCacheUtil.removeCache(FINDER_CLASS_NAME_LIST_WITHOUT_PAGINATION);
    }
}
