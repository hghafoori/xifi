package com.xebia.xifire.model;

import com.liferay.portal.kernel.util.Validator;
import com.liferay.portal.model.ModelWrapper;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;

/**
 * <p>
 * This class is a wrapper for {@link EmployeeDetail}.
 * </p>
 *
 * @author Brian Wing Shun Chan
 * @see EmployeeDetail
 * @generated
 */
public class EmployeeDetailWrapper implements EmployeeDetail,
    ModelWrapper<EmployeeDetail> {
    private EmployeeDetail _employeeDetail;

    public EmployeeDetailWrapper(EmployeeDetail employeeDetail) {
        _employeeDetail = employeeDetail;
    }

    @Override
    public Class<?> getModelClass() {
        return EmployeeDetail.class;
    }

    @Override
    public String getModelClassName() {
        return EmployeeDetail.class.getName();
    }

    @Override
    public Map<String, Object> getModelAttributes() {
        Map<String, Object> attributes = new HashMap<String, Object>();

        attributes.put("id", getId());
        attributes.put("userId", getUserId());
        attributes.put("employeeCode", getEmployeeCode());
        attributes.put("designation", getDesignation());
        attributes.put("location", getLocation());
        attributes.put("department", getDepartment());
        attributes.put("pfNumber", getPfNumber());
        attributes.put("doj", getDoj());
        attributes.put("bankAccount", getBankAccount());
        attributes.put("panNumber", getPanNumber());

        return attributes;
    }

    @Override
    public void setModelAttributes(Map<String, Object> attributes) {
        Long id = (Long) attributes.get("id");

        if (id != null) {
            setId(id);
        }

        Long userId = (Long) attributes.get("userId");

        if (userId != null) {
            setUserId(userId);
        }

        String employeeCode = (String) attributes.get("employeeCode");

        if (employeeCode != null) {
            setEmployeeCode(employeeCode);
        }

        String designation = (String) attributes.get("designation");

        if (designation != null) {
            setDesignation(designation);
        }

        String location = (String) attributes.get("location");

        if (location != null) {
            setLocation(location);
        }

        String department = (String) attributes.get("department");

        if (department != null) {
            setDepartment(department);
        }

        String pfNumber = (String) attributes.get("pfNumber");

        if (pfNumber != null) {
            setPfNumber(pfNumber);
        }

        Date doj = (Date) attributes.get("doj");

        if (doj != null) {
            setDoj(doj);
        }

        String bankAccount = (String) attributes.get("bankAccount");

        if (bankAccount != null) {
            setBankAccount(bankAccount);
        }

        String panNumber = (String) attributes.get("panNumber");

        if (panNumber != null) {
            setPanNumber(panNumber);
        }
    }

    /**
    * Returns the primary key of this employee detail.
    *
    * @return the primary key of this employee detail
    */
    @Override
    public long getPrimaryKey() {
        return _employeeDetail.getPrimaryKey();
    }

    /**
    * Sets the primary key of this employee detail.
    *
    * @param primaryKey the primary key of this employee detail
    */
    @Override
    public void setPrimaryKey(long primaryKey) {
        _employeeDetail.setPrimaryKey(primaryKey);
    }

    /**
    * Returns the ID of this employee detail.
    *
    * @return the ID of this employee detail
    */
    @Override
    public long getId() {
        return _employeeDetail.getId();
    }

    /**
    * Sets the ID of this employee detail.
    *
    * @param id the ID of this employee detail
    */
    @Override
    public void setId(long id) {
        _employeeDetail.setId(id);
    }

    /**
    * Returns the user ID of this employee detail.
    *
    * @return the user ID of this employee detail
    */
    @Override
    public long getUserId() {
        return _employeeDetail.getUserId();
    }

    /**
    * Sets the user ID of this employee detail.
    *
    * @param userId the user ID of this employee detail
    */
    @Override
    public void setUserId(long userId) {
        _employeeDetail.setUserId(userId);
    }

    /**
    * Returns the user uuid of this employee detail.
    *
    * @return the user uuid of this employee detail
    * @throws SystemException if a system exception occurred
    */
    @Override
    public java.lang.String getUserUuid()
        throws com.liferay.portal.kernel.exception.SystemException {
        return _employeeDetail.getUserUuid();
    }

    /**
    * Sets the user uuid of this employee detail.
    *
    * @param userUuid the user uuid of this employee detail
    */
    @Override
    public void setUserUuid(java.lang.String userUuid) {
        _employeeDetail.setUserUuid(userUuid);
    }

    /**
    * Returns the employee code of this employee detail.
    *
    * @return the employee code of this employee detail
    */
    @Override
    public java.lang.String getEmployeeCode() {
        return _employeeDetail.getEmployeeCode();
    }

    /**
    * Sets the employee code of this employee detail.
    *
    * @param employeeCode the employee code of this employee detail
    */
    @Override
    public void setEmployeeCode(java.lang.String employeeCode) {
        _employeeDetail.setEmployeeCode(employeeCode);
    }

    /**
    * Returns the designation of this employee detail.
    *
    * @return the designation of this employee detail
    */
    @Override
    public java.lang.String getDesignation() {
        return _employeeDetail.getDesignation();
    }

    /**
    * Sets the designation of this employee detail.
    *
    * @param designation the designation of this employee detail
    */
    @Override
    public void setDesignation(java.lang.String designation) {
        _employeeDetail.setDesignation(designation);
    }

    /**
    * Returns the location of this employee detail.
    *
    * @return the location of this employee detail
    */
    @Override
    public java.lang.String getLocation() {
        return _employeeDetail.getLocation();
    }

    /**
    * Sets the location of this employee detail.
    *
    * @param location the location of this employee detail
    */
    @Override
    public void setLocation(java.lang.String location) {
        _employeeDetail.setLocation(location);
    }

    /**
    * Returns the department of this employee detail.
    *
    * @return the department of this employee detail
    */
    @Override
    public java.lang.String getDepartment() {
        return _employeeDetail.getDepartment();
    }

    /**
    * Sets the department of this employee detail.
    *
    * @param department the department of this employee detail
    */
    @Override
    public void setDepartment(java.lang.String department) {
        _employeeDetail.setDepartment(department);
    }

    /**
    * Returns the pf number of this employee detail.
    *
    * @return the pf number of this employee detail
    */
    @Override
    public java.lang.String getPfNumber() {
        return _employeeDetail.getPfNumber();
    }

    /**
    * Sets the pf number of this employee detail.
    *
    * @param pfNumber the pf number of this employee detail
    */
    @Override
    public void setPfNumber(java.lang.String pfNumber) {
        _employeeDetail.setPfNumber(pfNumber);
    }

    /**
    * Returns the doj of this employee detail.
    *
    * @return the doj of this employee detail
    */
    @Override
    public java.util.Date getDoj() {
        return _employeeDetail.getDoj();
    }

    /**
    * Sets the doj of this employee detail.
    *
    * @param doj the doj of this employee detail
    */
    @Override
    public void setDoj(java.util.Date doj) {
        _employeeDetail.setDoj(doj);
    }

    /**
    * Returns the bank account of this employee detail.
    *
    * @return the bank account of this employee detail
    */
    @Override
    public java.lang.String getBankAccount() {
        return _employeeDetail.getBankAccount();
    }

    /**
    * Sets the bank account of this employee detail.
    *
    * @param bankAccount the bank account of this employee detail
    */
    @Override
    public void setBankAccount(java.lang.String bankAccount) {
        _employeeDetail.setBankAccount(bankAccount);
    }

    /**
    * Returns the pan number of this employee detail.
    *
    * @return the pan number of this employee detail
    */
    @Override
    public java.lang.String getPanNumber() {
        return _employeeDetail.getPanNumber();
    }

    /**
    * Sets the pan number of this employee detail.
    *
    * @param panNumber the pan number of this employee detail
    */
    @Override
    public void setPanNumber(java.lang.String panNumber) {
        _employeeDetail.setPanNumber(panNumber);
    }

    @Override
    public boolean isNew() {
        return _employeeDetail.isNew();
    }

    @Override
    public void setNew(boolean n) {
        _employeeDetail.setNew(n);
    }

    @Override
    public boolean isCachedModel() {
        return _employeeDetail.isCachedModel();
    }

    @Override
    public void setCachedModel(boolean cachedModel) {
        _employeeDetail.setCachedModel(cachedModel);
    }

    @Override
    public boolean isEscapedModel() {
        return _employeeDetail.isEscapedModel();
    }

    @Override
    public java.io.Serializable getPrimaryKeyObj() {
        return _employeeDetail.getPrimaryKeyObj();
    }

    @Override
    public void setPrimaryKeyObj(java.io.Serializable primaryKeyObj) {
        _employeeDetail.setPrimaryKeyObj(primaryKeyObj);
    }

    @Override
    public com.liferay.portlet.expando.model.ExpandoBridge getExpandoBridge() {
        return _employeeDetail.getExpandoBridge();
    }

    @Override
    public void setExpandoBridgeAttributes(
        com.liferay.portal.model.BaseModel<?> baseModel) {
        _employeeDetail.setExpandoBridgeAttributes(baseModel);
    }

    @Override
    public void setExpandoBridgeAttributes(
        com.liferay.portlet.expando.model.ExpandoBridge expandoBridge) {
        _employeeDetail.setExpandoBridgeAttributes(expandoBridge);
    }

    @Override
    public void setExpandoBridgeAttributes(
        com.liferay.portal.service.ServiceContext serviceContext) {
        _employeeDetail.setExpandoBridgeAttributes(serviceContext);
    }

    @Override
    public java.lang.Object clone() {
        return new EmployeeDetailWrapper((EmployeeDetail) _employeeDetail.clone());
    }

    @Override
    public int compareTo(com.xebia.xifire.model.EmployeeDetail employeeDetail) {
        return _employeeDetail.compareTo(employeeDetail);
    }

    @Override
    public int hashCode() {
        return _employeeDetail.hashCode();
    }

    @Override
    public com.liferay.portal.model.CacheModel<com.xebia.xifire.model.EmployeeDetail> toCacheModel() {
        return _employeeDetail.toCacheModel();
    }

    @Override
    public com.xebia.xifire.model.EmployeeDetail toEscapedModel() {
        return new EmployeeDetailWrapper(_employeeDetail.toEscapedModel());
    }

    @Override
    public com.xebia.xifire.model.EmployeeDetail toUnescapedModel() {
        return new EmployeeDetailWrapper(_employeeDetail.toUnescapedModel());
    }

    @Override
    public java.lang.String toString() {
        return _employeeDetail.toString();
    }

    @Override
    public java.lang.String toXmlString() {
        return _employeeDetail.toXmlString();
    }

    @Override
    public void persist()
        throws com.liferay.portal.kernel.exception.SystemException {
        _employeeDetail.persist();
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }

        if (!(obj instanceof EmployeeDetailWrapper)) {
            return false;
        }

        EmployeeDetailWrapper employeeDetailWrapper = (EmployeeDetailWrapper) obj;

        if (Validator.equals(_employeeDetail,
                    employeeDetailWrapper._employeeDetail)) {
            return true;
        }

        return false;
    }

    /**
     * @deprecated As of 6.1.0, replaced by {@link #getWrappedModel}
     */
    public EmployeeDetail getWrappedEmployeeDetail() {
        return _employeeDetail;
    }

    @Override
    public EmployeeDetail getWrappedModel() {
        return _employeeDetail;
    }

    @Override
    public void resetOriginalValues() {
        _employeeDetail.resetOriginalValues();
    }
}
