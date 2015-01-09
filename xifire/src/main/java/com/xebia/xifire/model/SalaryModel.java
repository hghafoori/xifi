package com.xebia.xifire.model;

import com.liferay.portal.model.BaseModel;
import com.liferay.portal.model.CacheModel;
import com.liferay.portal.service.ServiceContext;

import com.liferay.portlet.expando.model.ExpandoBridge;

import java.io.Serializable;

/**
 * The base model interface for the Salary service. Represents a row in the &quot;salary&quot; database table, with each column mapped to a property of this class.
 *
 * <p>
 * This interface and its corresponding implementation {@link com.xebia.xifire.model.impl.SalaryModelImpl} exist only as a container for the default property accessors generated by ServiceBuilder. Helper methods and all application logic should be put in {@link com.xebia.xifire.model.impl.SalaryImpl}.
 * </p>
 *
 * @author Brian Wing Shun Chan
 * @see Salary
 * @see com.xebia.xifire.model.impl.SalaryImpl
 * @see com.xebia.xifire.model.impl.SalaryModelImpl
 * @generated
 */
public interface SalaryModel extends BaseModel<Salary> {
    /*
     * NOTE FOR DEVELOPERS:
     *
     * Never modify or reference this interface directly. All methods that expect a salary model instance should use the {@link Salary} interface instead.
     */

    /**
     * Returns the primary key of this salary.
     *
     * @return the primary key of this salary
     */
    public int getPrimaryKey();

    /**
     * Sets the primary key of this salary.
     *
     * @param primaryKey the primary key of this salary
     */
    public void setPrimaryKey(int primaryKey);

    /**
     * Returns the ID of this salary.
     *
     * @return the ID of this salary
     */
    public int getId();

    /**
     * Sets the ID of this salary.
     *
     * @param id the ID of this salary
     */
    public void setId(int id);

    /**
     * Returns the user ID of this salary.
     *
     * @return the user ID of this salary
     */
    public int getUserId();

    /**
     * Sets the user ID of this salary.
     *
     * @param userId the user ID of this salary
     */
    public void setUserId(int userId);

    /**
     * Returns the salary month of this salary.
     *
     * @return the salary month of this salary
     */
    public int getSalaryMonth();

    /**
     * Sets the salary month of this salary.
     *
     * @param salaryMonth the salary month of this salary
     */
    public void setSalaryMonth(int salaryMonth);

    /**
     * Returns the salary year of this salary.
     *
     * @return the salary year of this salary
     */
    public int getSalaryYear();

    /**
     * Sets the salary year of this salary.
     *
     * @param salaryYear the salary year of this salary
     */
    public void setSalaryYear(int salaryYear);

    /**
     * Returns the basic of this salary.
     *
     * @return the basic of this salary
     */
    public int getBasic();

    /**
     * Sets the basic of this salary.
     *
     * @param basic the basic of this salary
     */
    public void setBasic(int basic);

    /**
     * Returns the arrears of this salary.
     *
     * @return the arrears of this salary
     */
    public int getArrears();

    /**
     * Sets the arrears of this salary.
     *
     * @param arrears the arrears of this salary
     */
    public void setArrears(int arrears);

    /**
     * Returns the others of this salary.
     *
     * @return the others of this salary
     */
    public int getOthers();

    /**
     * Sets the others of this salary.
     *
     * @param others the others of this salary
     */
    public void setOthers(int others);

    /**
     * Returns the tds of this salary.
     *
     * @return the tds of this salary
     */
    public int getTds();

    /**
     * Sets the tds of this salary.
     *
     * @param tds the tds of this salary
     */
    public void setTds(int tds);

    /**
     * Returns the lta of this salary.
     *
     * @return the lta of this salary
     */
    public int getLta();

    /**
     * Sets the lta of this salary.
     *
     * @param lta the lta of this salary
     */
    public void setLta(int lta);

    /**
     * Returns the h r a of this salary.
     *
     * @return the h r a of this salary
     */
    public int getHRA();

    /**
     * Sets the h r a of this salary.
     *
     * @param HRA the h r a of this salary
     */
    public void setHRA(int HRA);

    /**
     * Returns the special allowance of this salary.
     *
     * @return the special allowance of this salary
     */
    public int getSpecialAllowance();

    /**
     * Sets the special allowance of this salary.
     *
     * @param specialAllowance the special allowance of this salary
     */
    public void setSpecialAllowance(int specialAllowance);

    /**
     * Returns the attire allowance of this salary.
     *
     * @return the attire allowance of this salary
     */
    public int getAttireAllowance();

    /**
     * Sets the attire allowance of this salary.
     *
     * @param attireAllowance the attire allowance of this salary
     */
    public void setAttireAllowance(int attireAllowance);

    /**
     * Returns the food allowance of this salary.
     *
     * @return the food allowance of this salary
     */
    public int getFoodAllowance();

    /**
     * Sets the food allowance of this salary.
     *
     * @param foodAllowance the food allowance of this salary
     */
    public void setFoodAllowance(int foodAllowance);

    /**
     * Returns the education cess of this salary.
     *
     * @return the education cess of this salary
     */
    public int getEducationCess();

    /**
     * Sets the education cess of this salary.
     *
     * @param educationCess the education cess of this salary
     */
    public void setEducationCess(int educationCess);

    /**
     * Returns the pf of this salary.
     *
     * @return the pf of this salary
     */
    public int getPf();

    /**
     * Sets the pf of this salary.
     *
     * @param pf the pf of this salary
     */
    public void setPf(int pf);

    /**
     * Returns the epf of this salary.
     *
     * @return the epf of this salary
     */
    public int getEpf();

    /**
     * Sets the epf of this salary.
     *
     * @param epf the epf of this salary
     */
    public void setEpf(int epf);

    /**
     * Returns the labor welfare of this salary.
     *
     * @return the labor welfare of this salary
     */
    public int getLaborWelfare();

    /**
     * Sets the labor welfare of this salary.
     *
     * @param laborWelfare the labor welfare of this salary
     */
    public void setLaborWelfare(int laborWelfare);

    /**
     * Returns the mediclaim of this salary.
     *
     * @return the mediclaim of this salary
     */
    public int getMediclaim();

    /**
     * Sets the mediclaim of this salary.
     *
     * @param mediclaim the mediclaim of this salary
     */
    public void setMediclaim(int mediclaim);

    /**
     * Returns the other deduction of this salary.
     *
     * @return the other deduction of this salary
     */
    public int getOtherDeduction();

    /**
     * Sets the other deduction of this salary.
     *
     * @param otherDeduction the other deduction of this salary
     */
    public void setOtherDeduction(int otherDeduction);

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
    public int compareTo(Salary salary);

    @Override
    public int hashCode();

    @Override
    public CacheModel<Salary> toCacheModel();

    @Override
    public Salary toEscapedModel();

    @Override
    public Salary toUnescapedModel();

    @Override
    public String toString();

    @Override
    public String toXmlString();
}
