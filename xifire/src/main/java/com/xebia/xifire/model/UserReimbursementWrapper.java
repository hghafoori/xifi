package com.xebia.xifire.model;

import com.liferay.portal.kernel.util.Validator;
import com.liferay.portal.model.ModelWrapper;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;

/**
 * <p>
 * This class is a wrapper for {@link UserReimbursement}.
 * </p>
 *
 * @author Brian Wing Shun Chan
 * @see UserReimbursement
 * @generated
 */
public class UserReimbursementWrapper implements UserReimbursement,
    ModelWrapper<UserReimbursement> {
    private UserReimbursement _userReimbursement;

    public UserReimbursementWrapper(UserReimbursement userReimbursement) {
        _userReimbursement = userReimbursement;
    }

    @Override
    public Class<?> getModelClass() {
        return UserReimbursement.class;
    }

    @Override
    public String getModelClassName() {
        return UserReimbursement.class.getName();
    }

    @Override
    public Map<String, Object> getModelAttributes() {
        Map<String, Object> attributes = new HashMap<String, Object>();

        attributes.put("id", getId());
        attributes.put("createDate", getCreateDate());
        attributes.put("modifiedDate", getModifiedDate());
        attributes.put("userId", getUserId());
        attributes.put("description", getDescription());
        attributes.put("status", getStatus());

        return attributes;
    }

    @Override
    public void setModelAttributes(Map<String, Object> attributes) {
        Long id = (Long) attributes.get("id");

        if (id != null) {
            setId(id);
        }

        Date createDate = (Date) attributes.get("createDate");

        if (createDate != null) {
            setCreateDate(createDate);
        }

        Date modifiedDate = (Date) attributes.get("modifiedDate");

        if (modifiedDate != null) {
            setModifiedDate(modifiedDate);
        }

        Long userId = (Long) attributes.get("userId");

        if (userId != null) {
            setUserId(userId);
        }

        String description = (String) attributes.get("description");

        if (description != null) {
            setDescription(description);
        }

        String status = (String) attributes.get("status");

        if (status != null) {
            setStatus(status);
        }
    }

    /**
    * Returns the primary key of this user reimbursement.
    *
    * @return the primary key of this user reimbursement
    */
    @Override
    public long getPrimaryKey() {
        return _userReimbursement.getPrimaryKey();
    }

    /**
    * Sets the primary key of this user reimbursement.
    *
    * @param primaryKey the primary key of this user reimbursement
    */
    @Override
    public void setPrimaryKey(long primaryKey) {
        _userReimbursement.setPrimaryKey(primaryKey);
    }

    /**
    * Returns the ID of this user reimbursement.
    *
    * @return the ID of this user reimbursement
    */
    @Override
    public long getId() {
        return _userReimbursement.getId();
    }

    /**
    * Sets the ID of this user reimbursement.
    *
    * @param id the ID of this user reimbursement
    */
    @Override
    public void setId(long id) {
        _userReimbursement.setId(id);
    }

    /**
    * Returns the create date of this user reimbursement.
    *
    * @return the create date of this user reimbursement
    */
    @Override
    public java.util.Date getCreateDate() {
        return _userReimbursement.getCreateDate();
    }

    /**
    * Sets the create date of this user reimbursement.
    *
    * @param createDate the create date of this user reimbursement
    */
    @Override
    public void setCreateDate(java.util.Date createDate) {
        _userReimbursement.setCreateDate(createDate);
    }

    /**
    * Returns the modified date of this user reimbursement.
    *
    * @return the modified date of this user reimbursement
    */
    @Override
    public java.util.Date getModifiedDate() {
        return _userReimbursement.getModifiedDate();
    }

    /**
    * Sets the modified date of this user reimbursement.
    *
    * @param modifiedDate the modified date of this user reimbursement
    */
    @Override
    public void setModifiedDate(java.util.Date modifiedDate) {
        _userReimbursement.setModifiedDate(modifiedDate);
    }

    /**
    * Returns the user ID of this user reimbursement.
    *
    * @return the user ID of this user reimbursement
    */
    @Override
    public long getUserId() {
        return _userReimbursement.getUserId();
    }

    /**
    * Sets the user ID of this user reimbursement.
    *
    * @param userId the user ID of this user reimbursement
    */
    @Override
    public void setUserId(long userId) {
        _userReimbursement.setUserId(userId);
    }

    /**
    * Returns the user uuid of this user reimbursement.
    *
    * @return the user uuid of this user reimbursement
    * @throws SystemException if a system exception occurred
    */
    @Override
    public java.lang.String getUserUuid()
        throws com.liferay.portal.kernel.exception.SystemException {
        return _userReimbursement.getUserUuid();
    }

    /**
    * Sets the user uuid of this user reimbursement.
    *
    * @param userUuid the user uuid of this user reimbursement
    */
    @Override
    public void setUserUuid(java.lang.String userUuid) {
        _userReimbursement.setUserUuid(userUuid);
    }

    /**
    * Returns the description of this user reimbursement.
    *
    * @return the description of this user reimbursement
    */
    @Override
    public java.lang.String getDescription() {
        return _userReimbursement.getDescription();
    }

    /**
    * Sets the description of this user reimbursement.
    *
    * @param description the description of this user reimbursement
    */
    @Override
    public void setDescription(java.lang.String description) {
        _userReimbursement.setDescription(description);
    }

    /**
    * Returns the status of this user reimbursement.
    *
    * @return the status of this user reimbursement
    */
    @Override
    public java.lang.String getStatus() {
        return _userReimbursement.getStatus();
    }

    /**
    * Sets the status of this user reimbursement.
    *
    * @param status the status of this user reimbursement
    */
    @Override
    public void setStatus(java.lang.String status) {
        _userReimbursement.setStatus(status);
    }

    @Override
    public boolean isNew() {
        return _userReimbursement.isNew();
    }

    @Override
    public void setNew(boolean n) {
        _userReimbursement.setNew(n);
    }

    @Override
    public boolean isCachedModel() {
        return _userReimbursement.isCachedModel();
    }

    @Override
    public void setCachedModel(boolean cachedModel) {
        _userReimbursement.setCachedModel(cachedModel);
    }

    @Override
    public boolean isEscapedModel() {
        return _userReimbursement.isEscapedModel();
    }

    @Override
    public java.io.Serializable getPrimaryKeyObj() {
        return _userReimbursement.getPrimaryKeyObj();
    }

    @Override
    public void setPrimaryKeyObj(java.io.Serializable primaryKeyObj) {
        _userReimbursement.setPrimaryKeyObj(primaryKeyObj);
    }

    @Override
    public com.liferay.portlet.expando.model.ExpandoBridge getExpandoBridge() {
        return _userReimbursement.getExpandoBridge();
    }

    @Override
    public void setExpandoBridgeAttributes(
        com.liferay.portal.model.BaseModel<?> baseModel) {
        _userReimbursement.setExpandoBridgeAttributes(baseModel);
    }

    @Override
    public void setExpandoBridgeAttributes(
        com.liferay.portlet.expando.model.ExpandoBridge expandoBridge) {
        _userReimbursement.setExpandoBridgeAttributes(expandoBridge);
    }

    @Override
    public void setExpandoBridgeAttributes(
        com.liferay.portal.service.ServiceContext serviceContext) {
        _userReimbursement.setExpandoBridgeAttributes(serviceContext);
    }

    @Override
    public java.lang.Object clone() {
        return new UserReimbursementWrapper((UserReimbursement) _userReimbursement.clone());
    }

    @Override
    public int compareTo(UserReimbursement userReimbursement) {
        return _userReimbursement.compareTo(userReimbursement);
    }

    @Override
    public int hashCode() {
        return _userReimbursement.hashCode();
    }

    @Override
    public com.liferay.portal.model.CacheModel<UserReimbursement> toCacheModel() {
        return _userReimbursement.toCacheModel();
    }

    @Override
    public UserReimbursement toEscapedModel() {
        return new UserReimbursementWrapper(_userReimbursement.toEscapedModel());
    }

    @Override
    public UserReimbursement toUnescapedModel() {
        return new UserReimbursementWrapper(_userReimbursement.toUnescapedModel());
    }

    @Override
    public java.lang.String toString() {
        return _userReimbursement.toString();
    }

    @Override
    public java.lang.String toXmlString() {
        return _userReimbursement.toXmlString();
    }

    @Override
    public void persist()
        throws com.liferay.portal.kernel.exception.SystemException {
        _userReimbursement.persist();
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }

        if (!(obj instanceof UserReimbursementWrapper)) {
            return false;
        }

        UserReimbursementWrapper userReimbursementWrapper = (UserReimbursementWrapper) obj;

        if (Validator.equals(_userReimbursement,
                    userReimbursementWrapper._userReimbursement)) {
            return true;
        }

        return false;
    }

    /**
     * @deprecated As of 6.1.0, replaced by {@link #getWrappedModel}
     */
    public UserReimbursement getWrappedUserReimbursement() {
        return _userReimbursement;
    }

    @Override
    public UserReimbursement getWrappedModel() {
        return _userReimbursement;
    }

    @Override
    public void resetOriginalValues() {
        _userReimbursement.resetOriginalValues();
    }
}
