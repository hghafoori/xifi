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
public class UserReimbursementSoap implements Serializable {
    private int _id;
    private Date _createDate;
    private Date _modifiedDate;
    private int _userId;
    private String _description;
    private String _status;

    public UserReimbursementSoap() {
    }

    public static UserReimbursementSoap toSoapModel(UserReimbursement model) {
        UserReimbursementSoap soapModel = new UserReimbursementSoap();

        soapModel.setId(model.getId());
        soapModel.setCreateDate(model.getCreateDate());
        soapModel.setModifiedDate(model.getModifiedDate());
        soapModel.setUserId(model.getUserId());
        soapModel.setDescription(model.getDescription());
        soapModel.setStatus(model.getStatus());

        return soapModel;
    }

    public static UserReimbursementSoap[] toSoapModels(
        UserReimbursement[] models) {
        UserReimbursementSoap[] soapModels = new UserReimbursementSoap[models.length];

        for (int i = 0; i < models.length; i++) {
            soapModels[i] = toSoapModel(models[i]);
        }

        return soapModels;
    }

    public static UserReimbursementSoap[][] toSoapModels(
        UserReimbursement[][] models) {
        UserReimbursementSoap[][] soapModels = null;

        if (models.length > 0) {
            soapModels = new UserReimbursementSoap[models.length][models[0].length];
        } else {
            soapModels = new UserReimbursementSoap[0][0];
        }

        for (int i = 0; i < models.length; i++) {
            soapModels[i] = toSoapModels(models[i]);
        }

        return soapModels;
    }

    public static UserReimbursementSoap[] toSoapModels(
        List<UserReimbursement> models) {
        List<UserReimbursementSoap> soapModels = new ArrayList<UserReimbursementSoap>(models.size());

        for (UserReimbursement model : models) {
            soapModels.add(toSoapModel(model));
        }

        return soapModels.toArray(new UserReimbursementSoap[soapModels.size()]);
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

    public Date getCreateDate() {
        return _createDate;
    }

    public void setCreateDate(Date createDate) {
        _createDate = createDate;
    }

    public Date getModifiedDate() {
        return _modifiedDate;
    }

    public void setModifiedDate(Date modifiedDate) {
        _modifiedDate = modifiedDate;
    }

    public int getUserId() {
        return _userId;
    }

    public void setUserId(int userId) {
        _userId = userId;
    }

    public String getDescription() {
        return _description;
    }

    public void setDescription(String description) {
        _description = description;
    }

    public String getStatus() {
        return _status;
    }

    public void setStatus(String status) {
        _status = status;
    }
}
