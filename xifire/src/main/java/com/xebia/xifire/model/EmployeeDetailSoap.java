package com.xebia.xifire.model;

import java.io.Serializable;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * This class is used by SOAP remote services.
 *
 * @author Brian Wing Shun Chan
 * @generated
 */
public class EmployeeDetailSoap implements Serializable {
    private int _id;
    private int _userId;
    private String _employeeCode;
    private String _designation;
    private String _location;
    private String _department;
    private String _pfNumber;
    private Date _doj;
    private String _bankAccount;
    private String _panNumber;

    public EmployeeDetailSoap() {
    }

    public static EmployeeDetailSoap toSoapModel(EmployeeDetail model) {
        EmployeeDetailSoap soapModel = new EmployeeDetailSoap();

        soapModel.setId(model.getId());
        soapModel.setUserId(model.getUserId());
        soapModel.setEmployeeCode(model.getEmployeeCode());
        soapModel.setDesignation(model.getDesignation());
        soapModel.setLocation(model.getLocation());
        soapModel.setDepartment(model.getDepartment());
        soapModel.setPfNumber(model.getPfNumber());
        soapModel.setDoj(model.getDoj());
        soapModel.setBankAccount(model.getBankAccount());
        soapModel.setPanNumber(model.getPanNumber());

        return soapModel;
    }

    public static EmployeeDetailSoap[] toSoapModels(EmployeeDetail[] models) {
        EmployeeDetailSoap[] soapModels = new EmployeeDetailSoap[models.length];

        for (int i = 0; i < models.length; i++) {
            soapModels[i] = toSoapModel(models[i]);
        }

        return soapModels;
    }

    public static EmployeeDetailSoap[][] toSoapModels(EmployeeDetail[][] models) {
        EmployeeDetailSoap[][] soapModels = null;

        if (models.length > 0) {
            soapModels = new EmployeeDetailSoap[models.length][models[0].length];
        } else {
            soapModels = new EmployeeDetailSoap[0][0];
        }

        for (int i = 0; i < models.length; i++) {
            soapModels[i] = toSoapModels(models[i]);
        }

        return soapModels;
    }

    public static EmployeeDetailSoap[] toSoapModels(List<EmployeeDetail> models) {
        List<EmployeeDetailSoap> soapModels = new ArrayList<EmployeeDetailSoap>(models.size());

        for (EmployeeDetail model : models) {
            soapModels.add(toSoapModel(model));
        }

        return soapModels.toArray(new EmployeeDetailSoap[soapModels.size()]);
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

    public String getEmployeeCode() {
        return _employeeCode;
    }

    public void setEmployeeCode(String employeeCode) {
        _employeeCode = employeeCode;
    }

    public String getDesignation() {
        return _designation;
    }

    public void setDesignation(String designation) {
        _designation = designation;
    }

    public String getLocation() {
        return _location;
    }

    public void setLocation(String location) {
        _location = location;
    }

    public String getDepartment() {
        return _department;
    }

    public void setDepartment(String department) {
        _department = department;
    }

    public String getPfNumber() {
        return _pfNumber;
    }

    public void setPfNumber(String pfNumber) {
        _pfNumber = pfNumber;
    }

    public Date getDoj() {
        return _doj;
    }

    public void setDoj(Date doj) {
        _doj = doj;
    }

    public String getBankAccount() {
        return _bankAccount;
    }

    public void setBankAccount(String bankAccount) {
        _bankAccount = bankAccount;
    }

    public String getPanNumber() {
        return _panNumber;
    }

    public void setPanNumber(String panNumber) {
        _panNumber = panNumber;
    }
}
