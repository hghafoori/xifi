package com.xebia.xifire.model.impl;

import com.liferay.portal.kernel.util.StringBundler;
import com.liferay.portal.kernel.util.StringPool;
import com.liferay.portal.model.CacheModel;

import com.xebia.xifire.model.ReimbursementItem;

import java.io.Externalizable;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;

import java.util.Date;

/**
 * The cache model class for representing ReimbursementItem in entity cache.
 *
 * @author Brian Wing Shun Chan
 * @see ReimbursementItem
 * @generated
 */
public class ReimbursementItemCacheModel implements CacheModel<ReimbursementItem>,
    Externalizable {
    public int id;
    public int userReimbursementId;
    public long billDate;
    public String description;
    public int billAmount;
    public String billCategory;

    @Override
    public String toString() {
        StringBundler sb = new StringBundler(13);

        sb.append("{id=");
        sb.append(id);
        sb.append(", userReimbursementId=");
        sb.append(userReimbursementId);
        sb.append(", billDate=");
        sb.append(billDate);
        sb.append(", description=");
        sb.append(description);
        sb.append(", billAmount=");
        sb.append(billAmount);
        sb.append(", billCategory=");
        sb.append(billCategory);

        return sb.toString();
    }

    @Override
    public ReimbursementItem toEntityModel() {
        ReimbursementItemImpl reimbursementItemImpl = new ReimbursementItemImpl();

        reimbursementItemImpl.setId(id);
        reimbursementItemImpl.setUserReimbursementId(userReimbursementId);

        if (billDate == Long.MIN_VALUE) {
            reimbursementItemImpl.setBillDate(null);
        } else {
            reimbursementItemImpl.setBillDate(new Date(billDate));
        }

        if (description == null) {
            reimbursementItemImpl.setDescription(StringPool.BLANK);
        } else {
            reimbursementItemImpl.setDescription(description);
        }

        reimbursementItemImpl.setBillAmount(billAmount);

        if (billCategory == null) {
            reimbursementItemImpl.setBillCategory(StringPool.BLANK);
        } else {
            reimbursementItemImpl.setBillCategory(billCategory);
        }

        reimbursementItemImpl.resetOriginalValues();

        return reimbursementItemImpl;
    }

    @Override
    public void readExternal(ObjectInput objectInput) throws IOException {
        id = objectInput.readInt();
        userReimbursementId = objectInput.readInt();
        billDate = objectInput.readLong();
        description = objectInput.readUTF();
        billAmount = objectInput.readInt();
        billCategory = objectInput.readUTF();
    }

    @Override
    public void writeExternal(ObjectOutput objectOutput)
        throws IOException {
        objectOutput.writeInt(id);
        objectOutput.writeInt(userReimbursementId);
        objectOutput.writeLong(billDate);

        if (description == null) {
            objectOutput.writeUTF(StringPool.BLANK);
        } else {
            objectOutput.writeUTF(description);
        }

        objectOutput.writeInt(billAmount);

        if (billCategory == null) {
            objectOutput.writeUTF(StringPool.BLANK);
        } else {
            objectOutput.writeUTF(billCategory);
        }
    }
}
