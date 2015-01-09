package com.xebia.xifire.model;

import com.liferay.portal.kernel.bean.AutoEscape;
import com.liferay.portal.model.BaseModel;
import com.liferay.portal.model.CacheModel;
import com.liferay.portal.service.ServiceContext;

import com.liferay.portlet.expando.model.ExpandoBridge;

import java.io.Serializable;

import java.sql.Blob;

import java.util.Date;

/**
 * The base model interface for the ReimbursementItem service. Represents a row in the &quot;reimbursement_item&quot; database table, with each column mapped to a property of this class.
 *
 * <p>
 * This interface and its corresponding implementation {@link com.xebia.xifire.model.impl.ReimbursementItemModelImpl} exist only as a container for the default property accessors generated by ServiceBuilder. Helper methods and all application logic should be put in {@link com.xebia.xifire.model.impl.ReimbursementItemImpl}.
 * </p>
 *
 * @author Brian Wing Shun Chan
 * @see ReimbursementItem
 * @see com.xebia.xifire.model.impl.ReimbursementItemImpl
 * @see com.xebia.xifire.model.impl.ReimbursementItemModelImpl
 * @generated
 */
public interface ReimbursementItemModel extends BaseModel<ReimbursementItem> {
    /*
     * NOTE FOR DEVELOPERS:
     *
     * Never modify or reference this interface directly. All methods that expect a reimbursement item model instance should use the {@link ReimbursementItem} interface instead.
     */

    /**
     * Returns the primary key of this reimbursement item.
     *
     * @return the primary key of this reimbursement item
     */
    public int getPrimaryKey();

    /**
     * Sets the primary key of this reimbursement item.
     *
     * @param primaryKey the primary key of this reimbursement item
     */
    public void setPrimaryKey(int primaryKey);

    /**
     * Returns the ID of this reimbursement item.
     *
     * @return the ID of this reimbursement item
     */
    public int getId();

    /**
     * Sets the ID of this reimbursement item.
     *
     * @param id the ID of this reimbursement item
     */
    public void setId(int id);

    /**
     * Returns the user reimbursement ID of this reimbursement item.
     *
     * @return the user reimbursement ID of this reimbursement item
     */
    public int getUserReimbursementId();

    /**
     * Sets the user reimbursement ID of this reimbursement item.
     *
     * @param userReimbursementId the user reimbursement ID of this reimbursement item
     */
    public void setUserReimbursementId(int userReimbursementId);

    /**
     * Returns the bill date of this reimbursement item.
     *
     * @return the bill date of this reimbursement item
     */
    public Date getBillDate();

    /**
     * Sets the bill date of this reimbursement item.
     *
     * @param billDate the bill date of this reimbursement item
     */
    public void setBillDate(Date billDate);

    /**
     * Returns the description of this reimbursement item.
     *
     * @return the description of this reimbursement item
     */
    @AutoEscape
    public String getDescription();

    /**
     * Sets the description of this reimbursement item.
     *
     * @param description the description of this reimbursement item
     */
    public void setDescription(String description);

    /**
     * Returns the bill amount of this reimbursement item.
     *
     * @return the bill amount of this reimbursement item
     */
    public int getBillAmount();

    /**
     * Sets the bill amount of this reimbursement item.
     *
     * @param billAmount the bill amount of this reimbursement item
     */
    public void setBillAmount(int billAmount);

    /**
     * Returns the bill category of this reimbursement item.
     *
     * @return the bill category of this reimbursement item
     */
    @AutoEscape
    public String getBillCategory();

    /**
     * Sets the bill category of this reimbursement item.
     *
     * @param billCategory the bill category of this reimbursement item
     */
    public void setBillCategory(String billCategory);

    /**
     * Returns the document of this reimbursement item.
     *
     * @return the document of this reimbursement item
     */
    public Blob getDocument();

    /**
     * Sets the document of this reimbursement item.
     *
     * @param document the document of this reimbursement item
     */
    public void setDocument(Blob document);

    @Override
    public boolean isNew();

    @Override
    public void setNew(boolean n);

    @Override
    public boolean isCachedModel();

    @Override
    public void setCachedModel(boolean cachedModel);

    @Override
    public boolean isEscapedModel();

    @Override
    public Serializable getPrimaryKeyObj();

    @Override
    public void setPrimaryKeyObj(Serializable primaryKeyObj);

    @Override
    public ExpandoBridge getExpandoBridge();

    @Override
    public void setExpandoBridgeAttributes(BaseModel<?> baseModel);

    @Override
    public void setExpandoBridgeAttributes(ExpandoBridge expandoBridge);

    @Override
    public void setExpandoBridgeAttributes(ServiceContext serviceContext);

    @Override
    public Object clone();

    @Override
    public int compareTo(ReimbursementItem reimbursementItem);

    @Override
    public int hashCode();

    @Override
    public CacheModel<ReimbursementItem> toCacheModel();

    @Override
    public ReimbursementItem toEscapedModel();

    @Override
    public ReimbursementItem toUnescapedModel();

    @Override
    public String toString();

    @Override
    public String toXmlString();
}
