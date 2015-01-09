package com.xebia.xifire.model.impl;

import com.liferay.portal.kernel.util.StringBundler;
import com.liferay.portal.kernel.util.StringPool;
import com.liferay.portal.model.CacheModel;

import com.xebia.xifire.model.EmployeeDetail;

import java.io.Externalizable;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;

import java.util.Date;

/**
 * The cache model class for representing EmployeeDetail in entity cache.
 *
 * @author Brian Wing Shun Chan
 * @see EmployeeDetail
 * @generated
 */
public class EmployeeDetailCacheModel implements CacheModel<EmployeeDetail>,
    Externalizable {
    public long id;
    public long userId;
    public String employeeCode;
    public String designation;
    public String location;
    public String department;
    public String pfNumber;
    public long doj;
    public String bankAccount;
    public String panNumber;

    @Override
    public String toString() {
        StringBundler sb = new StringBundler(21);

        sb.append("{id=");
        sb.append(id);
        sb.append(", userId=");
        sb.append(userId);
        sb.append(", employeeCode=");
        sb.append(employeeCode);
        sb.append(", designation=");
        sb.append(designation);
        sb.append(", location=");
        sb.append(location);
        sb.append(", department=");
        sb.append(department);
        sb.append(", pfNumber=");
        sb.append(pfNumber);
        sb.append(", doj=");
        sb.append(doj);
        sb.append(", bankAccount=");
        sb.append(bankAccount);
        sb.append(", panNumber=");
        sb.append(panNumber);
        sb.append("}");

        return sb.toString();
    }

    @Override
    public EmployeeDetail toEntityModel() {
        EmployeeDetailImpl employeeDetailImpl = new EmployeeDetailImpl();

        employeeDetailImpl.setId(id);
        employeeDetailImpl.setUserId(userId);

        if (employeeCode == null) {
            employeeDetailImpl.setEmployeeCode(StringPool.BLANK);
        } else {
            employeeDetailImpl.setEmployeeCode(employeeCode);
        }

        if (designation == null) {
            employeeDetailImpl.setDesignation(StringPool.BLANK);
        } else {
            employeeDetailImpl.setDesignation(designation);
        }

        if (location == null) {
            employeeDetailImpl.setLocation(StringPool.BLANK);
        } else {
            employeeDetailImpl.setLocation(location);
        }

        if (department == null) {
            employeeDetailImpl.setDepartment(StringPool.BLANK);
        } else {
            employeeDetailImpl.setDepartment(department);
        }

        if (pfNumber == null) {
            employeeDetailImpl.setPfNumber(StringPool.BLANK);
        } else {
            employeeDetailImpl.setPfNumber(pfNumber);
        }

        if (doj == Long.MIN_VALUE) {
            employeeDetailImpl.setDoj(null);
        } else {
            employeeDetailImpl.setDoj(new Date(doj));
        }

        if (bankAccount == null) {
            employeeDetailImpl.setBankAccount(StringPool.BLANK);
        } else {
            employeeDetailImpl.setBankAccount(bankAccount);
        }

        if (panNumber == null) {
            employeeDetailImpl.setPanNumber(StringPool.BLANK);
        } else {
            employeeDetailImpl.setPanNumber(panNumber);
        }

        employeeDetailImpl.resetOriginalValues();

        return employeeDetailImpl;
    }

    @Override
    public void readExternal(ObjectInput objectInput) throws IOException {
        id = objectInput.readLong();
        userId = objectInput.readLong();
        employeeCode = objectInput.readUTF();
        designation = objectInput.readUTF();
        location = objectInput.readUTF();
        department = objectInput.readUTF();
        pfNumber = objectInput.readUTF();
        doj = objectInput.readLong();
        bankAccount = objectInput.readUTF();
        panNumber = objectInput.readUTF();
    }

    @Override
    public void writeExternal(ObjectOutput objectOutput)
        throws IOException {
        objectOutput.writeLong(id);
        objectOutput.writeLong(userId);

        if (employeeCode == null) {
            objectOutput.writeUTF(StringPool.BLANK);
        } else {
            objectOutput.writeUTF(employeeCode);
        }

        if (designation == null) {
            objectOutput.writeUTF(StringPool.BLANK);
        } else {
            objectOutput.writeUTF(designation);
        }

        if (location == null) {
            objectOutput.writeUTF(StringPool.BLANK);
        } else {
            objectOutput.writeUTF(location);
        }

        if (department == null) {
            objectOutput.writeUTF(StringPool.BLANK);
        } else {
            objectOutput.writeUTF(department);
        }

        if (pfNumber == null) {
            objectOutput.writeUTF(StringPool.BLANK);
        } else {
            objectOutput.writeUTF(pfNumber);
        }

        objectOutput.writeLong(doj);

        if (bankAccount == null) {
            objectOutput.writeUTF(StringPool.BLANK);
        } else {
            objectOutput.writeUTF(bankAccount);
        }

        if (panNumber == null) {
            objectOutput.writeUTF(StringPool.BLANK);
        } else {
            objectOutput.writeUTF(panNumber);
        }
    }
}
