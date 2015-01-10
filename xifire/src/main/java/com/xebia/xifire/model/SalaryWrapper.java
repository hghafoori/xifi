package com.xebia.xifire.model;

import com.liferay.portal.kernel.util.Validator;
import com.liferay.portal.model.ModelWrapper;

import java.util.HashMap;
import java.util.Map;

/**
 * <p>
 * This class is a wrapper for {@link Salary}.
 * </p>
 *
 * @author Brian Wing Shun Chan
 * @see Salary
 * @generated
 */
public class SalaryWrapper implements Salary, ModelWrapper<Salary> {
    private Salary _salary;

    public SalaryWrapper(Salary salary) {
        _salary = salary;
    }

    @Override
    public Class<?> getModelClass() {
        return Salary.class;
    }

    @Override
    public String getModelClassName() {
        return Salary.class.getName();
    }

    @Override
    public Map<String, Object> getModelAttributes() {
        Map<String, Object> attributes = new HashMap<String, Object>();

        attributes.put("id", getId());
        attributes.put("userId", getUserId());
        attributes.put("salaryMonth", getSalaryMonth());
        attributes.put("salaryYear", getSalaryYear());
        attributes.put("basic", getBasic());
        attributes.put("arrears", getArrears());
        attributes.put("others", getOthers());
        attributes.put("tds", getTds());
        attributes.put("lta", getLta());
        attributes.put("HRA", getHRA());
        attributes.put("specialAllowance", getSpecialAllowance());
        attributes.put("attireAllowance", getAttireAllowance());
        attributes.put("foodAllowance", getFoodAllowance());
        attributes.put("educationCess", getEducationCess());
        attributes.put("pf", getPf());
        attributes.put("epf", getEpf());
        attributes.put("laborWelfare", getLaborWelfare());
        attributes.put("mediclaim", getMediclaim());
        attributes.put("otherDeduction", getOtherDeduction());

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

        Integer salaryMonth = (Integer) attributes.get("salaryMonth");

        if (salaryMonth != null) {
            setSalaryMonth(salaryMonth);
        }

        Integer salaryYear = (Integer) attributes.get("salaryYear");

        if (salaryYear != null) {
            setSalaryYear(salaryYear);
        }

        Integer basic = (Integer) attributes.get("basic");

        if (basic != null) {
            setBasic(basic);
        }

        Integer arrears = (Integer) attributes.get("arrears");

        if (arrears != null) {
            setArrears(arrears);
        }

        Integer others = (Integer) attributes.get("others");

        if (others != null) {
            setOthers(others);
        }

        Integer tds = (Integer) attributes.get("tds");

        if (tds != null) {
            setTds(tds);
        }

        Integer lta = (Integer) attributes.get("lta");

        if (lta != null) {
            setLta(lta);
        }

        Integer HRA = (Integer) attributes.get("HRA");

        if (HRA != null) {
            setHRA(HRA);
        }

        Integer specialAllowance = (Integer) attributes.get("specialAllowance");

        if (specialAllowance != null) {
            setSpecialAllowance(specialAllowance);
        }

        Integer attireAllowance = (Integer) attributes.get("attireAllowance");

        if (attireAllowance != null) {
            setAttireAllowance(attireAllowance);
        }

        Integer foodAllowance = (Integer) attributes.get("foodAllowance");

        if (foodAllowance != null) {
            setFoodAllowance(foodAllowance);
        }

        Integer educationCess = (Integer) attributes.get("educationCess");

        if (educationCess != null) {
            setEducationCess(educationCess);
        }

        Integer pf = (Integer) attributes.get("pf");

        if (pf != null) {
            setPf(pf);
        }

        Integer epf = (Integer) attributes.get("epf");

        if (epf != null) {
            setEpf(epf);
        }

        Integer laborWelfare = (Integer) attributes.get("laborWelfare");

        if (laborWelfare != null) {
            setLaborWelfare(laborWelfare);
        }

        Integer mediclaim = (Integer) attributes.get("mediclaim");

        if (mediclaim != null) {
            setMediclaim(mediclaim);
        }

        Integer otherDeduction = (Integer) attributes.get("otherDeduction");

        if (otherDeduction != null) {
            setOtherDeduction(otherDeduction);
        }
    }

    /**
    * Returns the primary key of this salary.
    *
    * @return the primary key of this salary
    */
    @Override
    public long getPrimaryKey() {
        return _salary.getPrimaryKey();
    }

    /**
    * Sets the primary key of this salary.
    *
    * @param primaryKey the primary key of this salary
    */
    @Override
    public void setPrimaryKey(long primaryKey) {
        _salary.setPrimaryKey(primaryKey);
    }

    /**
    * Returns the ID of this salary.
    *
    * @return the ID of this salary
    */
    @Override
    public long getId() {
        return _salary.getId();
    }

    /**
    * Sets the ID of this salary.
    *
    * @param id the ID of this salary
    */
    @Override
    public void setId(long id) {
        _salary.setId(id);
    }

    /**
    * Returns the user ID of this salary.
    *
    * @return the user ID of this salary
    */
    @Override
    public long getUserId() {
        return _salary.getUserId();
    }

    /**
    * Sets the user ID of this salary.
    *
    * @param userId the user ID of this salary
    */
    @Override
    public void setUserId(long userId) {
        _salary.setUserId(userId);
    }

    /**
    * Returns the user uuid of this salary.
    *
    * @return the user uuid of this salary
    * @throws SystemException if a system exception occurred
    */
    @Override
    public java.lang.String getUserUuid()
        throws com.liferay.portal.kernel.exception.SystemException {
        return _salary.getUserUuid();
    }

    /**
    * Sets the user uuid of this salary.
    *
    * @param userUuid the user uuid of this salary
    */
    @Override
    public void setUserUuid(java.lang.String userUuid) {
        _salary.setUserUuid(userUuid);
    }

    /**
    * Returns the salary month of this salary.
    *
    * @return the salary month of this salary
    */
    @Override
    public int getSalaryMonth() {
        return _salary.getSalaryMonth();
    }

    /**
    * Sets the salary month of this salary.
    *
    * @param salaryMonth the salary month of this salary
    */
    @Override
    public void setSalaryMonth(int salaryMonth) {
        _salary.setSalaryMonth(salaryMonth);
    }

    /**
    * Returns the salary year of this salary.
    *
    * @return the salary year of this salary
    */
    @Override
    public int getSalaryYear() {
        return _salary.getSalaryYear();
    }

    /**
    * Sets the salary year of this salary.
    *
    * @param salaryYear the salary year of this salary
    */
    @Override
    public void setSalaryYear(int salaryYear) {
        _salary.setSalaryYear(salaryYear);
    }

    /**
    * Returns the basic of this salary.
    *
    * @return the basic of this salary
    */
    @Override
    public int getBasic() {
        return _salary.getBasic();
    }

    /**
    * Sets the basic of this salary.
    *
    * @param basic the basic of this salary
    */
    @Override
    public void setBasic(int basic) {
        _salary.setBasic(basic);
    }

    /**
    * Returns the arrears of this salary.
    *
    * @return the arrears of this salary
    */
    @Override
    public int getArrears() {
        return _salary.getArrears();
    }

    /**
    * Sets the arrears of this salary.
    *
    * @param arrears the arrears of this salary
    */
    @Override
    public void setArrears(int arrears) {
        _salary.setArrears(arrears);
    }

    /**
    * Returns the others of this salary.
    *
    * @return the others of this salary
    */
    @Override
    public int getOthers() {
        return _salary.getOthers();
    }

    /**
    * Sets the others of this salary.
    *
    * @param others the others of this salary
    */
    @Override
    public void setOthers(int others) {
        _salary.setOthers(others);
    }

    /**
    * Returns the tds of this salary.
    *
    * @return the tds of this salary
    */
    @Override
    public int getTds() {
        return _salary.getTds();
    }

    /**
    * Sets the tds of this salary.
    *
    * @param tds the tds of this salary
    */
    @Override
    public void setTds(int tds) {
        _salary.setTds(tds);
    }

    /**
    * Returns the lta of this salary.
    *
    * @return the lta of this salary
    */
    @Override
    public int getLta() {
        return _salary.getLta();
    }

    /**
    * Sets the lta of this salary.
    *
    * @param lta the lta of this salary
    */
    @Override
    public void setLta(int lta) {
        _salary.setLta(lta);
    }

    /**
    * Returns the h r a of this salary.
    *
    * @return the h r a of this salary
    */
    @Override
    public int getHRA() {
        return _salary.getHRA();
    }

    /**
    * Sets the h r a of this salary.
    *
    * @param HRA the h r a of this salary
    */
    @Override
    public void setHRA(int HRA) {
        _salary.setHRA(HRA);
    }

    /**
    * Returns the special allowance of this salary.
    *
    * @return the special allowance of this salary
    */
    @Override
    public int getSpecialAllowance() {
        return _salary.getSpecialAllowance();
    }

    /**
    * Sets the special allowance of this salary.
    *
    * @param specialAllowance the special allowance of this salary
    */
    @Override
    public void setSpecialAllowance(int specialAllowance) {
        _salary.setSpecialAllowance(specialAllowance);
    }

    /**
    * Returns the attire allowance of this salary.
    *
    * @return the attire allowance of this salary
    */
    @Override
    public int getAttireAllowance() {
        return _salary.getAttireAllowance();
    }

    /**
    * Sets the attire allowance of this salary.
    *
    * @param attireAllowance the attire allowance of this salary
    */
    @Override
    public void setAttireAllowance(int attireAllowance) {
        _salary.setAttireAllowance(attireAllowance);
    }

    /**
    * Returns the food allowance of this salary.
    *
    * @return the food allowance of this salary
    */
    @Override
    public int getFoodAllowance() {
        return _salary.getFoodAllowance();
    }

    /**
    * Sets the food allowance of this salary.
    *
    * @param foodAllowance the food allowance of this salary
    */
    @Override
    public void setFoodAllowance(int foodAllowance) {
        _salary.setFoodAllowance(foodAllowance);
    }

    /**
    * Returns the education cess of this salary.
    *
    * @return the education cess of this salary
    */
    @Override
    public int getEducationCess() {
        return _salary.getEducationCess();
    }

    /**
    * Sets the education cess of this salary.
    *
    * @param educationCess the education cess of this salary
    */
    @Override
    public void setEducationCess(int educationCess) {
        _salary.setEducationCess(educationCess);
    }

    /**
    * Returns the pf of this salary.
    *
    * @return the pf of this salary
    */
    @Override
    public int getPf() {
        return _salary.getPf();
    }

    /**
    * Sets the pf of this salary.
    *
    * @param pf the pf of this salary
    */
    @Override
    public void setPf(int pf) {
        _salary.setPf(pf);
    }

    /**
    * Returns the epf of this salary.
    *
    * @return the epf of this salary
    */
    @Override
    public int getEpf() {
        return _salary.getEpf();
    }

    /**
    * Sets the epf of this salary.
    *
    * @param epf the epf of this salary
    */
    @Override
    public void setEpf(int epf) {
        _salary.setEpf(epf);
    }

    /**
    * Returns the labor welfare of this salary.
    *
    * @return the labor welfare of this salary
    */
    @Override
    public int getLaborWelfare() {
        return _salary.getLaborWelfare();
    }

    /**
    * Sets the labor welfare of this salary.
    *
    * @param laborWelfare the labor welfare of this salary
    */
    @Override
    public void setLaborWelfare(int laborWelfare) {
        _salary.setLaborWelfare(laborWelfare);
    }

    /**
    * Returns the mediclaim of this salary.
    *
    * @return the mediclaim of this salary
    */
    @Override
    public int getMediclaim() {
        return _salary.getMediclaim();
    }

    /**
    * Sets the mediclaim of this salary.
    *
    * @param mediclaim the mediclaim of this salary
    */
    @Override
    public void setMediclaim(int mediclaim) {
        _salary.setMediclaim(mediclaim);
    }

    /**
    * Returns the other deduction of this salary.
    *
    * @return the other deduction of this salary
    */
    @Override
    public int getOtherDeduction() {
        return _salary.getOtherDeduction();
    }

    /**
    * Sets the other deduction of this salary.
    *
    * @param otherDeduction the other deduction of this salary
    */
    @Override
    public void setOtherDeduction(int otherDeduction) {
        _salary.setOtherDeduction(otherDeduction);
    }

    @Override
    public boolean isNew() {
        return _salary.isNew();
    }

    @Override
    public void setNew(boolean n) {
        _salary.setNew(n);
    }

    @Override
    public boolean isCachedModel() {
        return _salary.isCachedModel();
    }

    @Override
    public void setCachedModel(boolean cachedModel) {
        _salary.setCachedModel(cachedModel);
    }

    @Override
    public boolean isEscapedModel() {
        return _salary.isEscapedModel();
    }

    @Override
    public java.io.Serializable getPrimaryKeyObj() {
        return _salary.getPrimaryKeyObj();
    }

    @Override
    public void setPrimaryKeyObj(java.io.Serializable primaryKeyObj) {
        _salary.setPrimaryKeyObj(primaryKeyObj);
    }

    @Override
    public com.liferay.portlet.expando.model.ExpandoBridge getExpandoBridge() {
        return _salary.getExpandoBridge();
    }

    @Override
    public void setExpandoBridgeAttributes(
        com.liferay.portal.model.BaseModel<?> baseModel) {
        _salary.setExpandoBridgeAttributes(baseModel);
    }

    @Override
    public void setExpandoBridgeAttributes(
        com.liferay.portlet.expando.model.ExpandoBridge expandoBridge) {
        _salary.setExpandoBridgeAttributes(expandoBridge);
    }

    @Override
    public void setExpandoBridgeAttributes(
        com.liferay.portal.service.ServiceContext serviceContext) {
        _salary.setExpandoBridgeAttributes(serviceContext);
    }

    @Override
    public java.lang.Object clone() {
        return new SalaryWrapper((Salary) _salary.clone());
    }

    @Override
    public int compareTo(Salary salary) {
        return _salary.compareTo(salary);
    }

    @Override
    public int hashCode() {
        return _salary.hashCode();
    }

    @Override
    public com.liferay.portal.model.CacheModel<Salary> toCacheModel() {
        return _salary.toCacheModel();
    }

    @Override
    public Salary toEscapedModel() {
        return new SalaryWrapper(_salary.toEscapedModel());
    }

    @Override
    public Salary toUnescapedModel() {
        return new SalaryWrapper(_salary.toUnescapedModel());
    }

    @Override
    public java.lang.String toString() {
        return _salary.toString();
    }

    @Override
    public java.lang.String toXmlString() {
        return _salary.toXmlString();
    }

    @Override
    public void persist()
        throws com.liferay.portal.kernel.exception.SystemException {
        _salary.persist();
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }

        if (!(obj instanceof SalaryWrapper)) {
            return false;
        }

        SalaryWrapper salaryWrapper = (SalaryWrapper) obj;

        if (Validator.equals(_salary, salaryWrapper._salary)) {
            return true;
        }

        return false;
    }

    /**
     * @deprecated As of 6.1.0, replaced by {@link #getWrappedModel}
     */
    public Salary getWrappedSalary() {
        return _salary;
    }

    @Override
    public Salary getWrappedModel() {
        return _salary;
    }

    @Override
    public void resetOriginalValues() {
        _salary.resetOriginalValues();
    }
}
