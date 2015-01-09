package com.xebia.xifire.model;

import java.io.Serializable;

import java.sql.Blob;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * This class is used by SOAP remote services.
 *
 * @author Brian Wing Shun Chan
 * @generated
 */
public class ReimbursementItemSoap implements Serializable {
    private int _id;
    private int _userReimbursementId;
    private Date _billDate;
    private String _description;
    private int _billAmount;
    private String _billCategory;
    private Blob _document;

    public ReimbursementItemSoap() {
    }

    public static ReimbursementItemSoap toSoapModel(ReimbursementItem model) {
        ReimbursementItemSoap soapModel = new ReimbursementItemSoap();

        soapModel.setId(model.getId());
        soapModel.setUserReimbursementId(model.getUserReimbursementId());
        soapModel.setBillDate(model.getBillDate());
        soapModel.setDescription(model.getDescription());
        soapModel.setBillAmount(model.getBillAmount());
        soapModel.setBillCategory(model.getBillCategory());
        soapModel.setDocument(model.getDocument());

        return soapModel;
    }

    public static ReimbursementItemSoap[] toSoapModels(
        ReimbursementItem[] models) {
        ReimbursementItemSoap[] soapModels = new ReimbursementItemSoap[models.length];

        for (int i = 0; i < models.length; i++) {
            soapModels[i] = toSoapModel(models[i]);
        }

        return soapModels;
    }

    public static ReimbursementItemSoap[][] toSoapModels(
        ReimbursementItem[][] models) {
        ReimbursementItemSoap[][] soapModels = null;

        if (models.length > 0) {
            soapModels = new ReimbursementItemSoap[models.length][models[0].length];
        } else {
            soapModels = new ReimbursementItemSoap[0][0];
        }

        for (int i = 0; i < models.length; i++) {
            soapModels[i] = toSoapModels(models[i]);
        }

        return soapModels;
    }

    public static ReimbursementItemSoap[] toSoapModels(
        List<ReimbursementItem> models) {
        List<ReimbursementItemSoap> soapModels = new ArrayList<ReimbursementItemSoap>(models.size());

        for (ReimbursementItem model : models) {
            soapModels.add(toSoapModel(model));
        }

        return soapModels.toArray(new ReimbursementItemSoap[soapModels.size()]);
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

    public int getUserReimbursementId() {
        return _userReimbursementId;
    }

    public void setUserReimbursementId(int userReimbursementId) {
        _userReimbursementId = userReimbursementId;
    }

    public Date getBillDate() {
        return _billDate;
    }

    public void setBillDate(Date billDate) {
        _billDate = billDate;
    }

    public String getDescription() {
        return _description;
    }

    public void setDescription(String description) {
        _description = description;
    }

    public int getBillAmount() {
        return _billAmount;
    }

    public void setBillAmount(int billAmount) {
        _billAmount = billAmount;
    }

    public String getBillCategory() {
        return _billCategory;
    }

    public void setBillCategory(String billCategory) {
        _billCategory = billCategory;
    }

    public Blob getDocument() {
        return _document;
    }

    public void setDocument(Blob document) {
        _document = document;
    }
}
