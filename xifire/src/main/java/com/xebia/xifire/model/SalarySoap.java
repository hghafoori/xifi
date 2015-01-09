package com.xebia.xifire.model;

import java.io.Serializable;

import java.util.ArrayList;
import java.util.List;

/**
 * This class is used by SOAP remote services.
 *
 * @author Brian Wing Shun Chan
 * @generated
 */
public class SalarySoap implements Serializable {
    private int _id;
    private int _userId;
    private int _salaryMonth;
    private int _salaryYear;
    private int _basic;
    private int _arrears;
    private int _others;
    private int _tds;
    private int _lta;
    private int _HRA;
    private int _specialAllowance;
    private int _attireAllowance;
    private int _foodAllowance;
    private int _educationCess;
    private int _pf;
    private int _epf;
    private int _laborWelfare;
    private int _mediclaim;
    private int _otherDeduction;

    public SalarySoap() {
    }

    public static SalarySoap toSoapModel(Salary model) {
        SalarySoap soapModel = new SalarySoap();

        soapModel.setId(model.getId());
        soapModel.setUserId(model.getUserId());
        soapModel.setSalaryMonth(model.getSalaryMonth());
        soapModel.setSalaryYear(model.getSalaryYear());
        soapModel.setBasic(model.getBasic());
        soapModel.setArrears(model.getArrears());
        soapModel.setOthers(model.getOthers());
        soapModel.setTds(model.getTds());
        soapModel.setLta(model.getLta());
        soapModel.setHRA(model.getHRA());
        soapModel.setSpecialAllowance(model.getSpecialAllowance());
        soapModel.setAttireAllowance(model.getAttireAllowance());
        soapModel.setFoodAllowance(model.getFoodAllowance());
        soapModel.setEducationCess(model.getEducationCess());
        soapModel.setPf(model.getPf());
        soapModel.setEpf(model.getEpf());
        soapModel.setLaborWelfare(model.getLaborWelfare());
        soapModel.setMediclaim(model.getMediclaim());
        soapModel.setOtherDeduction(model.getOtherDeduction());

        return soapModel;
    }

    public static SalarySoap[] toSoapModels(Salary[] models) {
        SalarySoap[] soapModels = new SalarySoap[models.length];

        for (int i = 0; i < models.length; i++) {
            soapModels[i] = toSoapModel(models[i]);
        }

        return soapModels;
    }

    public static SalarySoap[][] toSoapModels(Salary[][] models) {
        SalarySoap[][] soapModels = null;

        if (models.length > 0) {
            soapModels = new SalarySoap[models.length][models[0].length];
        } else {
            soapModels = new SalarySoap[0][0];
        }

        for (int i = 0; i < models.length; i++) {
            soapModels[i] = toSoapModels(models[i]);
        }

        return soapModels;
    }

    public static SalarySoap[] toSoapModels(List<Salary> models) {
        List<SalarySoap> soapModels = new ArrayList<SalarySoap>(models.size());

        for (Salary model : models) {
            soapModels.add(toSoapModel(model));
        }

        return soapModels.toArray(new SalarySoap[soapModels.size()]);
    }

    public int getPrimaryKey() {
        return _id;
    }

    public void setPrimaryKey(int pk) {
        setId(pk);
    }

    public int getId() {
        return _id;
    }

    public void setId(int id) {
        _id = id;
    }

    public int getUserId() {
        return _userId;
    }

    public void setUserId(int userId) {
        _userId = userId;
    }

    public int getSalaryMonth() {
        return _salaryMonth;
    }

    public void setSalaryMonth(int salaryMonth) {
        _salaryMonth = salaryMonth;
    }

    public int getSalaryYear() {
        return _salaryYear;
    }

    public void setSalaryYear(int salaryYear) {
        _salaryYear = salaryYear;
    }

    public int getBasic() {
        return _basic;
    }

    public void setBasic(int basic) {
        _basic = basic;
    }

    public int getArrears() {
        return _arrears;
    }

    public void setArrears(int arrears) {
        _arrears = arrears;
    }

    public int getOthers() {
        return _others;
    }

    public void setOthers(int others) {
        _others = others;
    }

    public int getTds() {
        return _tds;
    }

    public void setTds(int tds) {
        _tds = tds;
    }

    public int getLta() {
        return _lta;
    }

    public void setLta(int lta) {
        _lta = lta;
    }

    public int getHRA() {
        return _HRA;
    }

    public void setHRA(int HRA) {
        _HRA = HRA;
    }

    public int getSpecialAllowance() {
        return _specialAllowance;
    }

    public void setSpecialAllowance(int specialAllowance) {
        _specialAllowance = specialAllowance;
    }

    public int getAttireAllowance() {
        return _attireAllowance;
    }

    public void setAttireAllowance(int attireAllowance) {
        _attireAllowance = attireAllowance;
    }

    public int getFoodAllowance() {
        return _foodAllowance;
    }

    public void setFoodAllowance(int foodAllowance) {
        _foodAllowance = foodAllowance;
    }

    public int getEducationCess() {
        return _educationCess;
    }

    public void setEducationCess(int educationCess) {
        _educationCess = educationCess;
    }

    public int getPf() {
        return _pf;
    }

    public void setPf(int pf) {
        _pf = pf;
    }

    public int getEpf() {
        return _epf;
    }

    public void setEpf(int epf) {
        _epf = epf;
    }

    public int getLaborWelfare() {
        return _laborWelfare;
    }

    public void setLaborWelfare(int laborWelfare) {
        _laborWelfare = laborWelfare;
    }

    public int getMediclaim() {
        return _mediclaim;
    }

    public void setMediclaim(int mediclaim) {
        _mediclaim = mediclaim;
    }

    public int getOtherDeduction() {
        return _otherDeduction;
    }

    public void setOtherDeduction(int otherDeduction) {
        _otherDeduction = otherDeduction;
    }
}
