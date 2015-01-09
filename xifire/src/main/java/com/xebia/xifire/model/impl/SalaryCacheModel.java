package com.xebia.xifire.model.impl;

import com.liferay.portal.kernel.util.StringBundler;
import com.liferay.portal.model.CacheModel;

import com.xebia.xifire.model.Salary;

import java.io.Externalizable;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;

/**
 * The cache model class for representing Salary in entity cache.
 *
 * @author Brian Wing Shun Chan
 * @see Salary
 * @generated
 */
public class SalaryCacheModel implements CacheModel<Salary>, Externalizable {
    public long id;
    public long userId;
    public int salaryMonth;
    public int salaryYear;
    public int basic;
    public int arrears;
    public int others;
    public int tds;
    public int lta;
    public int HRA;
    public int specialAllowance;
    public int attireAllowance;
    public int foodAllowance;
    public int educationCess;
    public int pf;
    public int epf;
    public int laborWelfare;
    public int mediclaim;
    public int otherDeduction;

    @Override
    public String toString() {
        StringBundler sb = new StringBundler(39);

        sb.append("{id=");
        sb.append(id);
        sb.append(", userId=");
        sb.append(userId);
        sb.append(", salaryMonth=");
        sb.append(salaryMonth);
        sb.append(", salaryYear=");
        sb.append(salaryYear);
        sb.append(", basic=");
        sb.append(basic);
        sb.append(", arrears=");
        sb.append(arrears);
        sb.append(", others=");
        sb.append(others);
        sb.append(", tds=");
        sb.append(tds);
        sb.append(", lta=");
        sb.append(lta);
        sb.append(", HRA=");
        sb.append(HRA);
        sb.append(", specialAllowance=");
        sb.append(specialAllowance);
        sb.append(", attireAllowance=");
        sb.append(attireAllowance);
        sb.append(", foodAllowance=");
        sb.append(foodAllowance);
        sb.append(", educationCess=");
        sb.append(educationCess);
        sb.append(", pf=");
        sb.append(pf);
        sb.append(", epf=");
        sb.append(epf);
        sb.append(", laborWelfare=");
        sb.append(laborWelfare);
        sb.append(", mediclaim=");
        sb.append(mediclaim);
        sb.append(", otherDeduction=");
        sb.append(otherDeduction);
        sb.append("}");

        return sb.toString();
    }

    @Override
    public Salary toEntityModel() {
        SalaryImpl salaryImpl = new SalaryImpl();

        salaryImpl.setId(id);
        salaryImpl.setUserId(userId);
        salaryImpl.setSalaryMonth(salaryMonth);
        salaryImpl.setSalaryYear(salaryYear);
        salaryImpl.setBasic(basic);
        salaryImpl.setArrears(arrears);
        salaryImpl.setOthers(others);
        salaryImpl.setTds(tds);
        salaryImpl.setLta(lta);
        salaryImpl.setHRA(HRA);
        salaryImpl.setSpecialAllowance(specialAllowance);
        salaryImpl.setAttireAllowance(attireAllowance);
        salaryImpl.setFoodAllowance(foodAllowance);
        salaryImpl.setEducationCess(educationCess);
        salaryImpl.setPf(pf);
        salaryImpl.setEpf(epf);
        salaryImpl.setLaborWelfare(laborWelfare);
        salaryImpl.setMediclaim(mediclaim);
        salaryImpl.setOtherDeduction(otherDeduction);

        salaryImpl.resetOriginalValues();

        return salaryImpl;
    }

    @Override
    public void readExternal(ObjectInput objectInput) throws IOException {
        id = objectInput.readLong();
        userId = objectInput.readLong();
        salaryMonth = objectInput.readInt();
        salaryYear = objectInput.readInt();
        basic = objectInput.readInt();
        arrears = objectInput.readInt();
        others = objectInput.readInt();
        tds = objectInput.readInt();
        lta = objectInput.readInt();
        HRA = objectInput.readInt();
        specialAllowance = objectInput.readInt();
        attireAllowance = objectInput.readInt();
        foodAllowance = objectInput.readInt();
        educationCess = objectInput.readInt();
        pf = objectInput.readInt();
        epf = objectInput.readInt();
        laborWelfare = objectInput.readInt();
        mediclaim = objectInput.readInt();
        otherDeduction = objectInput.readInt();
    }

    @Override
    public void writeExternal(ObjectOutput objectOutput)
        throws IOException {
        objectOutput.writeLong(id);
        objectOutput.writeLong(userId);
        objectOutput.writeInt(salaryMonth);
        objectOutput.writeInt(salaryYear);
        objectOutput.writeInt(basic);
        objectOutput.writeInt(arrears);
        objectOutput.writeInt(others);
        objectOutput.writeInt(tds);
        objectOutput.writeInt(lta);
        objectOutput.writeInt(HRA);
        objectOutput.writeInt(specialAllowance);
        objectOutput.writeInt(attireAllowance);
        objectOutput.writeInt(foodAllowance);
        objectOutput.writeInt(educationCess);
        objectOutput.writeInt(pf);
        objectOutput.writeInt(epf);
        objectOutput.writeInt(laborWelfare);
        objectOutput.writeInt(mediclaim);
        objectOutput.writeInt(otherDeduction);
    }
}
