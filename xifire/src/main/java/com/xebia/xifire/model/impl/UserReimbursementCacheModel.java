package com.xebia.xifire.model.impl;

import com.liferay.portal.kernel.util.StringBundler;
import com.liferay.portal.kernel.util.StringPool;
import com.liferay.portal.model.CacheModel;

import com.xebia.xifire.model.UserReimbursement;

import java.io.Externalizable;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;

import java.util.Date;

/**
 * The cache model class for representing UserReimbursement in entity cache.
 *
 * @author Brian Wing Shun Chan
 * @see UserReimbursement
 * @generated
 */
public class UserReimbursementCacheModel implements CacheModel<UserReimbursement>,
    Externalizable {
    public long id;
    public long createDate;
    public long modifiedDate;
    public long userId;
    public String description;
    public String status;

    @Override
    public String toString() {
        StringBundler sb = new StringBundler(13);

        sb.append("{id=");
        sb.append(id);
        sb.append(", createDate=");
        sb.append(createDate);
        sb.append(", modifiedDate=");
        sb.append(modifiedDate);
        sb.append(", userId=");
        sb.append(userId);
        sb.append(", description=");
        sb.append(description);
        sb.append(", status=");
        sb.append(status);
        sb.append("}");

        return sb.toString();
    }

    @Override
    public UserReimbursement toEntityModel() {
        UserReimbursementImpl userReimbursementImpl = new UserReimbursementImpl();

        userReimbursementImpl.setId(id);

        if (createDate == Long.MIN_VALUE) {
            userReimbursementImpl.setCreateDate(null);
        } else {
            userReimbursementImpl.setCreateDate(new Date(createDate));
        }

        if (modifiedDate == Long.MIN_VALUE) {
            userReimbursementImpl.setModifiedDate(null);
        } else {
            userReimbursementImpl.setModifiedDate(new Date(modifiedDate));
        }

        userReimbursementImpl.setUserId(userId);

        if (description == null) {
            userReimbursementImpl.setDescription(StringPool.BLANK);
        } else {
            userReimbursementImpl.setDescription(description);
        }

        if (status == null) {
            userReimbursementImpl.setStatus(StringPool.BLANK);
        } else {
            userReimbursementImpl.setStatus(status);
        }

        userReimbursementImpl.resetOriginalValues();

        return userReimbursementImpl;
    }

    @Override
    public void readExternal(ObjectInput objectInput) throws IOException {
        id = objectInput.readLong();
        createDate = objectInput.readLong();
        modifiedDate = objectInput.readLong();
        userId = objectInput.readLong();
        description = objectInput.readUTF();
        status = objectInput.readUTF();
    }

    @Override
    public void writeExternal(ObjectOutput objectOutput)
        throws IOException {
        objectOutput.writeLong(id);
        objectOutput.writeLong(createDate);
        objectOutput.writeLong(modifiedDate);
        objectOutput.writeLong(userId);

        if (description == null) {
            objectOutput.writeUTF(StringPool.BLANK);
        } else {
            objectOutput.writeUTF(description);
        }

        if (status == null) {
            objectOutput.writeUTF(StringPool.BLANK);
        } else {
            objectOutput.writeUTF(status);
        }
    }
}
