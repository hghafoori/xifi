package com.xebia.xifire.service.base;

import com.liferay.portal.kernel.bean.BeanReference;
import com.liferay.portal.kernel.bean.IdentifiableBean;
import com.liferay.portal.kernel.dao.jdbc.SqlUpdate;
import com.liferay.portal.kernel.dao.jdbc.SqlUpdateFactoryUtil;
import com.liferay.portal.kernel.dao.orm.DynamicQuery;
import com.liferay.portal.kernel.dao.orm.DynamicQueryFactoryUtil;
import com.liferay.portal.kernel.dao.orm.Projection;
import com.liferay.portal.kernel.exception.PortalException;
import com.liferay.portal.kernel.exception.SystemException;
import com.liferay.portal.kernel.search.Indexable;
import com.liferay.portal.kernel.search.IndexableType;
import com.liferay.portal.kernel.util.OrderByComparator;
import com.liferay.portal.model.PersistedModel;
import com.liferay.portal.service.BaseLocalServiceImpl;
import com.liferay.portal.service.PersistedModelLocalServiceRegistryUtil;
import com.liferay.portal.service.persistence.UserPersistence;

import com.xebia.xifire.model.EmployeeDetail;
import com.xebia.xifire.service.EmployeeDetailLocalService;
import com.xebia.xifire.service.persistence.EmployeeDetailPersistence;
import com.xebia.xifire.service.persistence.ReimbursementItemPersistence;
import com.xebia.xifire.service.persistence.SalaryPersistence;
import com.xebia.xifire.service.persistence.UserReimbursementPersistence;

import java.io.Serializable;

import java.util.List;

import javax.sql.DataSource;

/**
 * Provides the base implementation for the employee detail local service.
 *
 * <p>
 * This implementation exists only as a container for the default service methods generated by ServiceBuilder. All custom service methods should be put in {@link com.xebia.xifire.service.impl.EmployeeDetailLocalServiceImpl}.
 * </p>
 *
 * @author Brian Wing Shun Chan
 * @see com.xebia.xifire.service.impl.EmployeeDetailLocalServiceImpl
 * @see com.xebia.xifire.service.EmployeeDetailLocalServiceUtil
 * @generated
 */
public abstract class EmployeeDetailLocalServiceBaseImpl
    extends BaseLocalServiceImpl implements EmployeeDetailLocalService,
        IdentifiableBean {
    @BeanReference(type = com.xebia.xifire.service.EmployeeDetailLocalService.class)
    protected com.xebia.xifire.service.EmployeeDetailLocalService employeeDetailLocalService;
    @BeanReference(type = EmployeeDetailPersistence.class)
    protected EmployeeDetailPersistence employeeDetailPersistence;
    @BeanReference(type = com.xebia.xifire.service.ReimbursementItemLocalService.class)
    protected com.xebia.xifire.service.ReimbursementItemLocalService reimbursementItemLocalService;
    @BeanReference(type = ReimbursementItemPersistence.class)
    protected ReimbursementItemPersistence reimbursementItemPersistence;
    @BeanReference(type = com.xebia.xifire.service.SalaryLocalService.class)
    protected com.xebia.xifire.service.SalaryLocalService salaryLocalService;
    @BeanReference(type = SalaryPersistence.class)
    protected SalaryPersistence salaryPersistence;
    @BeanReference(type = com.xebia.xifire.service.UserReimbursementLocalService.class)
    protected com.xebia.xifire.service.UserReimbursementLocalService userReimbursementLocalService;
    @BeanReference(type = UserReimbursementPersistence.class)
    protected UserReimbursementPersistence userReimbursementPersistence;
    @BeanReference(type = com.liferay.counter.service.CounterLocalService.class)
    protected com.liferay.counter.service.CounterLocalService counterLocalService;
    @BeanReference(type = com.liferay.portal.service.ResourceLocalService.class)
    protected com.liferay.portal.service.ResourceLocalService resourceLocalService;
    @BeanReference(type = com.liferay.portal.service.UserLocalService.class)
    protected com.liferay.portal.service.UserLocalService userLocalService;
    @BeanReference(type = com.liferay.portal.service.UserService.class)
    protected com.liferay.portal.service.UserService userService;
    @BeanReference(type = UserPersistence.class)
    protected UserPersistence userPersistence;
    private String _beanIdentifier;
    private ClassLoader _classLoader;
    private EmployeeDetailLocalServiceClpInvoker _clpInvoker = new EmployeeDetailLocalServiceClpInvoker();

    /*
     * NOTE FOR DEVELOPERS:
     *
     * Never modify or reference this class directly. Always use {@link com.xebia.xifire.service.EmployeeDetailLocalServiceUtil} to access the employee detail local service.
     */

    /**
     * Adds the employee detail to the database. Also notifies the appropriate model listeners.
     *
     * @param employeeDetail the employee detail
     * @return the employee detail that was added
     * @throws SystemException if a system exception occurred
     */
    @Indexable(type = IndexableType.REINDEX)
    @Override
    public EmployeeDetail addEmployeeDetail(EmployeeDetail employeeDetail)
        throws SystemException {
        employeeDetail.setNew(true);

        return employeeDetailPersistence.update(employeeDetail);
    }

    /**
     * Creates a new employee detail with the primary key. Does not add the employee detail to the database.
     *
     * @param id the primary key for the new employee detail
     * @return the new employee detail
     */
    @Override
    public EmployeeDetail createEmployeeDetail(int id) {
        return employeeDetailPersistence.create(id);
    }

    /**
     * Deletes the employee detail with the primary key from the database. Also notifies the appropriate model listeners.
     *
     * @param id the primary key of the employee detail
     * @return the employee detail that was removed
     * @throws PortalException if a employee detail with the primary key could not be found
     * @throws SystemException if a system exception occurred
     */
    @Indexable(type = IndexableType.DELETE)
    @Override
    public EmployeeDetail deleteEmployeeDetail(int id)
        throws PortalException, SystemException {
        return employeeDetailPersistence.remove(id);
    }

    /**
     * Deletes the employee detail from the database. Also notifies the appropriate model listeners.
     *
     * @param employeeDetail the employee detail
     * @return the employee detail that was removed
     * @throws SystemException if a system exception occurred
     */
    @Indexable(type = IndexableType.DELETE)
    @Override
    public EmployeeDetail deleteEmployeeDetail(EmployeeDetail employeeDetail)
        throws SystemException {
        return employeeDetailPersistence.remove(employeeDetail);
    }

    @Override
    public DynamicQuery dynamicQuery() {
        Class<?> clazz = getClass();

        return DynamicQueryFactoryUtil.forClass(EmployeeDetail.class,
            clazz.getClassLoader());
    }

    /**
     * Performs a dynamic query on the database and returns the matching rows.
     *
     * @param dynamicQuery the dynamic query
     * @return the matching rows
     * @throws SystemException if a system exception occurred
     */
    @Override
    @SuppressWarnings("rawtypes")
    public List dynamicQuery(DynamicQuery dynamicQuery)
        throws SystemException {
        return employeeDetailPersistence.findWithDynamicQuery(dynamicQuery);
    }

    /**
     * Performs a dynamic query on the database and returns a range of the matching rows.
     *
     * <p>
     * Useful when paginating results. Returns a maximum of <code>end - start</code> instances. <code>start</code> and <code>end</code> are not primary keys, they are indexes in the result set. Thus, <code>0</code> refers to the first result in the set. Setting both <code>start</code> and <code>end</code> to {@link com.liferay.portal.kernel.dao.orm.QueryUtil#ALL_POS} will return the full result set. If <code>orderByComparator</code> is specified, then the query will include the given ORDER BY logic. If <code>orderByComparator</code> is absent and pagination is required (<code>start</code> and <code>end</code> are not {@link com.liferay.portal.kernel.dao.orm.QueryUtil#ALL_POS}), then the query will include the default ORDER BY logic from {@link com.xebia.xifire.model.impl.EmployeeDetailModelImpl}. If both <code>orderByComparator</code> and pagination are absent, for performance reasons, the query will not have an ORDER BY clause and the returned result set will be sorted on by the primary key in an ascending order.
     * </p>
     *
     * @param dynamicQuery the dynamic query
     * @param start the lower bound of the range of model instances
     * @param end the upper bound of the range of model instances (not inclusive)
     * @return the range of matching rows
     * @throws SystemException if a system exception occurred
     */
    @Override
    @SuppressWarnings("rawtypes")
    public List dynamicQuery(DynamicQuery dynamicQuery, int start, int end)
        throws SystemException {
        return employeeDetailPersistence.findWithDynamicQuery(dynamicQuery,
            start, end);
    }

    /**
     * Performs a dynamic query on the database and returns an ordered range of the matching rows.
     *
     * <p>
     * Useful when paginating results. Returns a maximum of <code>end - start</code> instances. <code>start</code> and <code>end</code> are not primary keys, they are indexes in the result set. Thus, <code>0</code> refers to the first result in the set. Setting both <code>start</code> and <code>end</code> to {@link com.liferay.portal.kernel.dao.orm.QueryUtil#ALL_POS} will return the full result set. If <code>orderByComparator</code> is specified, then the query will include the given ORDER BY logic. If <code>orderByComparator</code> is absent and pagination is required (<code>start</code> and <code>end</code> are not {@link com.liferay.portal.kernel.dao.orm.QueryUtil#ALL_POS}), then the query will include the default ORDER BY logic from {@link com.xebia.xifire.model.impl.EmployeeDetailModelImpl}. If both <code>orderByComparator</code> and pagination are absent, for performance reasons, the query will not have an ORDER BY clause and the returned result set will be sorted on by the primary key in an ascending order.
     * </p>
     *
     * @param dynamicQuery the dynamic query
     * @param start the lower bound of the range of model instances
     * @param end the upper bound of the range of model instances (not inclusive)
     * @param orderByComparator the comparator to order the results by (optionally <code>null</code>)
     * @return the ordered range of matching rows
     * @throws SystemException if a system exception occurred
     */
    @Override
    @SuppressWarnings("rawtypes")
    public List dynamicQuery(DynamicQuery dynamicQuery, int start, int end,
        OrderByComparator orderByComparator) throws SystemException {
        return employeeDetailPersistence.findWithDynamicQuery(dynamicQuery,
            start, end, orderByComparator);
    }

    /**
     * Returns the number of rows that match the dynamic query.
     *
     * @param dynamicQuery the dynamic query
     * @return the number of rows that match the dynamic query
     * @throws SystemException if a system exception occurred
     */
    @Override
    public long dynamicQueryCount(DynamicQuery dynamicQuery)
        throws SystemException {
        return employeeDetailPersistence.countWithDynamicQuery(dynamicQuery);
    }

    /**
     * Returns the number of rows that match the dynamic query.
     *
     * @param dynamicQuery the dynamic query
     * @param projection the projection to apply to the query
     * @return the number of rows that match the dynamic query
     * @throws SystemException if a system exception occurred
     */
    @Override
    public long dynamicQueryCount(DynamicQuery dynamicQuery,
        Projection projection) throws SystemException {
        return employeeDetailPersistence.countWithDynamicQuery(dynamicQuery,
            projection);
    }

    @Override
    public EmployeeDetail fetchEmployeeDetail(int id) throws SystemException {
        return employeeDetailPersistence.fetchByPrimaryKey(id);
    }

    /**
     * Returns the employee detail with the primary key.
     *
     * @param id the primary key of the employee detail
     * @return the employee detail
     * @throws PortalException if a employee detail with the primary key could not be found
     * @throws SystemException if a system exception occurred
     */
    @Override
    public EmployeeDetail getEmployeeDetail(int id)
        throws PortalException, SystemException {
        return employeeDetailPersistence.findByPrimaryKey(id);
    }

    @Override
    public PersistedModel getPersistedModel(Serializable primaryKeyObj)
        throws PortalException, SystemException {
        return employeeDetailPersistence.findByPrimaryKey(primaryKeyObj);
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
    public List<EmployeeDetail> getEmployeeDetails(int start, int end)
        throws SystemException {
        return employeeDetailPersistence.findAll(start, end);
    }

    /**
     * Returns the number of employee details.
     *
     * @return the number of employee details
     * @throws SystemException if a system exception occurred
     */
    @Override
    public int getEmployeeDetailsCount() throws SystemException {
        return employeeDetailPersistence.countAll();
    }

    /**
     * Updates the employee detail in the database or adds it if it does not yet exist. Also notifies the appropriate model listeners.
     *
     * @param employeeDetail the employee detail
     * @return the employee detail that was updated
     * @throws SystemException if a system exception occurred
     */
    @Indexable(type = IndexableType.REINDEX)
    @Override
    public EmployeeDetail updateEmployeeDetail(EmployeeDetail employeeDetail)
        throws SystemException {
        return employeeDetailPersistence.update(employeeDetail);
    }

    /**
     * Returns the employee detail local service.
     *
     * @return the employee detail local service
     */
    public com.xebia.xifire.service.EmployeeDetailLocalService getEmployeeDetailLocalService() {
        return employeeDetailLocalService;
    }

    /**
     * Sets the employee detail local service.
     *
     * @param employeeDetailLocalService the employee detail local service
     */
    public void setEmployeeDetailLocalService(
        com.xebia.xifire.service.EmployeeDetailLocalService employeeDetailLocalService) {
        this.employeeDetailLocalService = employeeDetailLocalService;
    }

    /**
     * Returns the employee detail persistence.
     *
     * @return the employee detail persistence
     */
    public EmployeeDetailPersistence getEmployeeDetailPersistence() {
        return employeeDetailPersistence;
    }

    /**
     * Sets the employee detail persistence.
     *
     * @param employeeDetailPersistence the employee detail persistence
     */
    public void setEmployeeDetailPersistence(
        EmployeeDetailPersistence employeeDetailPersistence) {
        this.employeeDetailPersistence = employeeDetailPersistence;
    }

    /**
     * Returns the reimbursement item local service.
     *
     * @return the reimbursement item local service
     */
    public com.xebia.xifire.service.ReimbursementItemLocalService getReimbursementItemLocalService() {
        return reimbursementItemLocalService;
    }

    /**
     * Sets the reimbursement item local service.
     *
     * @param reimbursementItemLocalService the reimbursement item local service
     */
    public void setReimbursementItemLocalService(
        com.xebia.xifire.service.ReimbursementItemLocalService reimbursementItemLocalService) {
        this.reimbursementItemLocalService = reimbursementItemLocalService;
    }

    /**
     * Returns the reimbursement item persistence.
     *
     * @return the reimbursement item persistence
     */
    public ReimbursementItemPersistence getReimbursementItemPersistence() {
        return reimbursementItemPersistence;
    }

    /**
     * Sets the reimbursement item persistence.
     *
     * @param reimbursementItemPersistence the reimbursement item persistence
     */
    public void setReimbursementItemPersistence(
        ReimbursementItemPersistence reimbursementItemPersistence) {
        this.reimbursementItemPersistence = reimbursementItemPersistence;
    }

    /**
     * Returns the salary local service.
     *
     * @return the salary local service
     */
    public com.xebia.xifire.service.SalaryLocalService getSalaryLocalService() {
        return salaryLocalService;
    }

    /**
     * Sets the salary local service.
     *
     * @param salaryLocalService the salary local service
     */
    public void setSalaryLocalService(
        com.xebia.xifire.service.SalaryLocalService salaryLocalService) {
        this.salaryLocalService = salaryLocalService;
    }

    /**
     * Returns the salary persistence.
     *
     * @return the salary persistence
     */
    public SalaryPersistence getSalaryPersistence() {
        return salaryPersistence;
    }

    /**
     * Sets the salary persistence.
     *
     * @param salaryPersistence the salary persistence
     */
    public void setSalaryPersistence(SalaryPersistence salaryPersistence) {
        this.salaryPersistence = salaryPersistence;
    }

    /**
     * Returns the user reimbursement local service.
     *
     * @return the user reimbursement local service
     */
    public com.xebia.xifire.service.UserReimbursementLocalService getUserReimbursementLocalService() {
        return userReimbursementLocalService;
    }

    /**
     * Sets the user reimbursement local service.
     *
     * @param userReimbursementLocalService the user reimbursement local service
     */
    public void setUserReimbursementLocalService(
        com.xebia.xifire.service.UserReimbursementLocalService userReimbursementLocalService) {
        this.userReimbursementLocalService = userReimbursementLocalService;
    }

    /**
     * Returns the user reimbursement persistence.
     *
     * @return the user reimbursement persistence
     */
    public UserReimbursementPersistence getUserReimbursementPersistence() {
        return userReimbursementPersistence;
    }

    /**
     * Sets the user reimbursement persistence.
     *
     * @param userReimbursementPersistence the user reimbursement persistence
     */
    public void setUserReimbursementPersistence(
        UserReimbursementPersistence userReimbursementPersistence) {
        this.userReimbursementPersistence = userReimbursementPersistence;
    }

    /**
     * Returns the counter local service.
     *
     * @return the counter local service
     */
    public com.liferay.counter.service.CounterLocalService getCounterLocalService() {
        return counterLocalService;
    }

    /**
     * Sets the counter local service.
     *
     * @param counterLocalService the counter local service
     */
    public void setCounterLocalService(
        com.liferay.counter.service.CounterLocalService counterLocalService) {
        this.counterLocalService = counterLocalService;
    }

    /**
     * Returns the resource local service.
     *
     * @return the resource local service
     */
    public com.liferay.portal.service.ResourceLocalService getResourceLocalService() {
        return resourceLocalService;
    }

    /**
     * Sets the resource local service.
     *
     * @param resourceLocalService the resource local service
     */
    public void setResourceLocalService(
        com.liferay.portal.service.ResourceLocalService resourceLocalService) {
        this.resourceLocalService = resourceLocalService;
    }

    /**
     * Returns the user local service.
     *
     * @return the user local service
     */
    public com.liferay.portal.service.UserLocalService getUserLocalService() {
        return userLocalService;
    }

    /**
     * Sets the user local service.
     *
     * @param userLocalService the user local service
     */
    public void setUserLocalService(
        com.liferay.portal.service.UserLocalService userLocalService) {
        this.userLocalService = userLocalService;
    }

    /**
     * Returns the user remote service.
     *
     * @return the user remote service
     */
    public com.liferay.portal.service.UserService getUserService() {
        return userService;
    }

    /**
     * Sets the user remote service.
     *
     * @param userService the user remote service
     */
    public void setUserService(
        com.liferay.portal.service.UserService userService) {
        this.userService = userService;
    }

    /**
     * Returns the user persistence.
     *
     * @return the user persistence
     */
    public UserPersistence getUserPersistence() {
        return userPersistence;
    }

    /**
     * Sets the user persistence.
     *
     * @param userPersistence the user persistence
     */
    public void setUserPersistence(UserPersistence userPersistence) {
        this.userPersistence = userPersistence;
    }

    public void afterPropertiesSet() {
        Class<?> clazz = getClass();

        _classLoader = clazz.getClassLoader();

        PersistedModelLocalServiceRegistryUtil.register("com.xebia.xifire.model.EmployeeDetail",
            employeeDetailLocalService);
    }

    public void destroy() {
        PersistedModelLocalServiceRegistryUtil.unregister(
            "com.xebia.xifire.model.EmployeeDetail");
    }

    /**
     * Returns the Spring bean ID for this bean.
     *
     * @return the Spring bean ID for this bean
     */
    @Override
    public String getBeanIdentifier() {
        return _beanIdentifier;
    }

    /**
     * Sets the Spring bean ID for this bean.
     *
     * @param beanIdentifier the Spring bean ID for this bean
     */
    @Override
    public void setBeanIdentifier(String beanIdentifier) {
        _beanIdentifier = beanIdentifier;
    }

    @Override
    public Object invokeMethod(String name, String[] parameterTypes,
        Object[] arguments) throws Throwable {
        Thread currentThread = Thread.currentThread();

        ClassLoader contextClassLoader = currentThread.getContextClassLoader();

        if (contextClassLoader != _classLoader) {
            currentThread.setContextClassLoader(_classLoader);
        }

        try {
            return _clpInvoker.invokeMethod(name, parameterTypes, arguments);
        } finally {
            if (contextClassLoader != _classLoader) {
                currentThread.setContextClassLoader(contextClassLoader);
            }
        }
    }

    protected Class<?> getModelClass() {
        return EmployeeDetail.class;
    }

    protected String getModelClassName() {
        return EmployeeDetail.class.getName();
    }

    /**
     * Performs an SQL query.
     *
     * @param sql the sql query
     */
    protected void runSQL(String sql) throws SystemException {
        try {
            DataSource dataSource = employeeDetailPersistence.getDataSource();

            SqlUpdate sqlUpdate = SqlUpdateFactoryUtil.getSqlUpdate(dataSource,
                    sql, new int[0]);

            sqlUpdate.update();
        } catch (Exception e) {
            throw new SystemException(e);
        }
    }
}
