package com.xebia.xifire.model;

import com.liferay.portal.kernel.util.Validator;
import com.liferay.portal.model.ModelWrapper;

import java.sql.Blob;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;

/**
 * <p>
 * This class is a wrapper for {@link ReimbursementItem}.
 * </p>
 *
 * @author Brian Wing Shun Chan
 * @see ReimbursementItem
 * @generated
 */
public class ReimbursementItemWrapper implements ReimbursementItem,
    ModelWrapper<ReimbursementItem> {
    private ReimbursementItem _reimbursementItem;

    public ReimbursementItemWrapper(ReimbursementItem reimbursementItem) {
        _reimbursementItem = reimbursementItem;
    }

    @Override
    public Class<?> getModelClass() {
        return ReimbursementItem.class;
    }

    @Override
    public String getModelClassName() {
        return ReimbursementItem.class.getName();
    }

    @Override
    public Map<String, Object> getModelAttributes() {
        Map<String, Object> attributes = new HashMap<String, Object>();

        attributes.put("id", getId());
        attributes.put("userReimbursementId", getUserReimbursementId());
        attributes.put("billDate", getBillDate());
        attributes.put("description", getDescription());
        attributes.put("billAmount", getBillAmount());
        attributes.put("billCategory", getBillCategory());
        attributes.put("document", getDocument());

        return attributes;
    }

    @Override
    public void setModelAttributes(Map<String, Object> attributes) {
        Long id = (Long) attributes.get("id");

        if (id != null) {
            setId(id);
        }

        Long userReimbursementId = (Long) attributes.get("userReimbursementId");

        if (userReimbursementId != null) {
            setUserReimbursementId(userReimbursementId);
        }

        Date billDate = (Date) attributes.get("billDate");

        if (billDate != null) {
            setBillDate(billDate);
        }

        String description = (String) attributes.get("description");

        if (description != null) {
            setDescription(description);
        }

        Integer billAmount = (Integer) attributes.get("billAmount");

        if (billAmount != null) {
            setBillAmount(billAmount);
        }

        String billCategory = (String) attributes.get("billCategory");

        if (billCategory != null) {
            setBillCategory(billCategory);
        }

        Blob document = (Blob) attributes.get("document");

        if (document != null) {
            setDocument(document);
        }
    }

    /**
    * Returns the primary key of this reimbursement item.
    *
    * @return the primary key of this reimbursement item
    */
    @Override
    public long getPrimaryKey() {
        return _reimbursementItem.getPrimaryKey();
    }

    /**
    * Sets the primary key of this reimbursement item.
    *
    * @param primaryKey the primary key of this reimbursement item
    */
    @Override
    public void setPrimaryKey(long primaryKey) {
        _reimbursementItem.setPrimaryKey(primaryKey);
    }

    /**
    * Returns the ID of this reimbursement item.
    *
    * @return the ID of this reimbursement item
    */
    @Override
    public long getId() {
        return _reimbursementItem.getId();
    }

    /**
    * Sets the ID of this reimbursement item.
    *
    * @param id the ID of this reimbursement item
    */
    @Override
    public void setId(long id) {
        _reimbursementItem.setId(id);
    }

    /**
    * Returns the user reimbursement ID of this reimbursement item.
    *
    * @return the user reimbursement ID of this reimbursement item
    */
    @Override
    public long getUserReimbursementId() {
        return _reimbursementItem.getUserReimbursementId();
    }

    /**
    * Sets the user reimbursement ID of this reimbursement item.
    *
    * @param userReimbursementId the user reimbursement ID of this reimbursement item
    */
    @Override
    public void setUserReimbursementId(long userReimbursementId) {
        _reimbursementItem.setUserReimbursementId(userReimbursementId);
    }

    /**
    * Returns the bill date of this reimbursement item.
    *
    * @return the bill date of this reimbursement item
    */
    @Override
    public java.util.Date getBillDate() {
        return _reimbursementItem.getBillDate();
    }

    /**
    * Sets the bill date of this reimbursement item.
    *
    * @param billDate the bill date of this reimbursement item
    */
    @Override
    public void setBillDate(java.util.Date billDate) {
        _reimbursementItem.setBillDate(billDate);
    }

    /**
    * Returns the description of this reimbursement item.
    *
    * @return the description of this reimbursement item
    */
    @Override
    public java.lang.String getDescription() {
        return _reimbursementItem.getDescription();
    }

    /**
    * Sets the description of this reimbursement item.
    *
    * @param description the description of this reimbursement item
    */
    @Override
    public void setDescription(java.lang.String description) {
        _reimbursementItem.setDescription(description);
    }

    /**
    * Returns the bill amount of this reimbursement item.
    *
    * @return the bill amount of this reimbursement item
    */
    @Override
    public int getBillAmount() {
        return _reimbursementItem.getBillAmount();
    }

    /**
    * Sets the bill amount of this reimbursement item.
    *
    * @param billAmount the bill amount of this reimbursement item
    */
    @Override
    public void setBillAmount(int billAmount) {
        _reimbursementItem.setBillAmount(billAmount);
    }

    /**
    * Returns the bill category of this reimbursement item.
    *
    * @return the bill category of this reimbursement item
    */
    @Override
    public java.lang.String getBillCategory() {
        return _reimbursementItem.getBillCategory();
    }

    /**
    * Sets the bill category of this reimbursement item.
    *
    * @param billCategory the bill category of this reimbursement item
    */
    @Override
    public void setBillCategory(java.lang.String billCategory) {
        _reimbursementItem.setBillCategory(billCategory);
    }

    /**
    * Returns the document of this reimbursement item.
    *
    * @return the document of this reimbursement item
    */
    @Override
    public java.sql.Blob getDocument() {
        return _reimbursementItem.getDocument();
    }

    /**
    * Sets the document of this reimbursement item.
    *
    * @param document the document of this reimbursement item
    */
    @Override
    public void setDocument(java.sql.Blob document) {
        _reimbursementItem.setDocument(document);
    }

    @Override
    public boolean isNew() {
        return _reimbursementItem.isNew();
    }

    @Override
    public void setNew(boolean n) {
        _reimbursementItem.setNew(n);
    }

    @Override
    public boolean isCachedModel() {
        return _reimbursementItem.isCachedModel();
    }

    @Override
    public void setCachedModel(boolean cachedModel) {
        _reimbursementItem.setCachedModel(cachedModel);
    }

    @Override
    public boolean isEscapedModel() {
        return _reimbursementItem.isEscapedModel();
    }

    @Override
    public java.io.Serializable getPrimaryKeyObj() {
        return _reimbursementItem.getPrimaryKeyObj();
    }

    @Override
    public void setPrimaryKeyObj(java.io.Serializable primaryKeyObj) {
        _reimbursementItem.setPrimaryKeyObj(primaryKeyObj);
    }

    @Override
    public com.liferay.portlet.expando.model.ExpandoBridge getExpandoBridge() {
        return _reimbursementItem.getExpandoBridge();
    }

    @Override
    public void setExpandoBridgeAttributes(
        com.liferay.portal.model.BaseModel<?> baseModel) {
        _reimbursementItem.setExpandoBridgeAttributes(baseModel);
    }

    @Override
    public void setExpandoBridgeAttributes(
        com.liferay.portlet.expando.model.ExpandoBridge expandoBridge) {
        _reimbursementItem.setExpandoBridgeAttributes(expandoBridge);
    }

    @Override
    public void setExpandoBridgeAttributes(
        com.liferay.portal.service.ServiceContext serviceContext) {
        _reimbursementItem.setExpandoBridgeAttributes(serviceContext);
    }

    @Override
    public java.lang.Object clone() {
        return new ReimbursementItemWrapper((ReimbursementItem) _reimbursementItem.clone());
    }

    @Override
    public int compareTo(ReimbursementItem reimbursementItem) {
        return _reimbursementItem.compareTo(reimbursementItem);
    }

    @Override
    public int hashCode() {
        return _reimbursementItem.hashCode();
    }

    @Override
    public com.liferay.portal.model.CacheModel<ReimbursementItem> toCacheModel() {
        return _reimbursementItem.toCacheModel();
    }

    @Override
    public ReimbursementItem toEscapedModel() {
        return new ReimbursementItemWrapper(_reimbursementItem.toEscapedModel());
    }

    @Override
    public ReimbursementItem toUnescapedModel() {
        return new ReimbursementItemWrapper(_reimbursementItem.toUnescapedModel());
    }

    @Override
    public java.lang.String toString() {
        return _reimbursementItem.toString();
    }

    @Override
    public java.lang.String toXmlString() {
        return _reimbursementItem.toXmlString();
    }

    @Override
    public void persist()
        throws com.liferay.portal.kernel.exception.SystemException {
        _reimbursementItem.persist();
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }

        if (!(obj instanceof ReimbursementItemWrapper)) {
            return false;
        }

        ReimbursementItemWrapper reimbursementItemWrapper = (ReimbursementItemWrapper) obj;

        if (Validator.equals(_reimbursementItem,
                    reimbursementItemWrapper._reimbursementItem)) {
            return true;
        }

        return false;
    }

    /**
     * @deprecated As of 6.1.0, replaced by {@link #getWrappedModel}
     */
    public ReimbursementItem getWrappedReimbursementItem() {
        return _reimbursementItem;
    }

    @Override
    public ReimbursementItem getWrappedModel() {
        return _reimbursementItem;
    }

    @Override
    public void resetOriginalValues() {
        _reimbursementItem.resetOriginalValues();
    }
}
