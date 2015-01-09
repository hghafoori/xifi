package com.xebia.xifire.model;

import com.liferay.portal.kernel.bean.AutoEscapeBeanHandler;
import com.liferay.portal.kernel.exception.SystemException;
import com.liferay.portal.kernel.util.ProxyUtil;
import com.liferay.portal.kernel.util.StringBundler;
import com.liferay.portal.model.BaseModel;
import com.liferay.portal.model.impl.BaseModelImpl;

import com.xebia.xifire.service.ClpSerializer;
import com.xebia.xifire.service.ReimbursementItemLocalServiceUtil;

import java.io.Serializable;

import java.lang.reflect.Method;

import java.sql.Blob;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;


public class ReimbursementItemClp extends BaseModelImpl<ReimbursementItem>
    implements ReimbursementItem {
    private int _id;
    private int _userReimbursementId;
    private Date _billDate;
    private String _description;
    private int _billAmount;
    private String _billCategory;
    private Blob _document;
    private BaseModel<?> _reimbursementItemRemoteModel;

    public ReimbursementItemClp() {
    }

    @Override
    public Class<?> getModelClass() {
        return ReimbursementItem.class;
    }

    @Override
    public String getModelClassName() {
        return ReimbursementItem.class.getName();
    }

    @Override
    public int getPrimaryKey() {
        return _id;
    }

    @Override
    public void setPrimaryKey(int primaryKey) {
        setId(primaryKey);
    }

    @Override
    public Serializable getPrimaryKeyObj() {
        return _id;
    }

    @Override
    public void setPrimaryKeyObj(Serializable primaryKeyObj) {
        setPrimaryKey(((Integer) primaryKeyObj).intValue());
    }

    @Override
    public Map<String, Object> getModelAttributes() {
        Map<String, Object> attributes = new HashMap<String, Object>();

        attributes.put("id", getId());
        attributes.put("userReimbursementId", getUserReimbursementId());
        attributes.put("billDate", getBillDate());
        attributes.put("description", getDescription());
        attributes.put("billAmount", getBillAmount());
        attributes.put("billCategory", getBillCategory());
        attributes.put("document", getDocument());

        return attributes;
    }

    @Override
    public void setModelAttributes(Map<String, Object> attributes) {
        Integer id = (Integer) attributes.get("id");

        if (id != null) {
            setId(id);
        }

        Integer userReimbursementId = (Integer) attributes.get(
                "userReimbursementId");

        if (userReimbursementId != null) {
            setUserReimbursementId(userReimbursementId);
        }

        Date billDate = (Date) attributes.get("billDate");

        if (billDate != null) {
            setBillDate(billDate);
        }

        String description = (String) attributes.get("description");

        if (description != null) {
            setDescription(description);
        }

        Integer billAmount = (Integer) attributes.get("billAmount");

        if (billAmount != null) {
            setBillAmount(billAmount);
        }

        String billCategory = (String) attributes.get("billCategory");

        if (billCategory != null) {
            setBillCategory(billCategory);
        }

        Blob document = (Blob) attributes.get("document");

        if (document != null) {
            setDocument(document);
        }
    }

    @Override
    public int getId() {
        return _id;
    }

    @Override
    public void setId(int id) {
        _id = id;

        if (_reimbursementItemRemoteModel != null) {
            try {
                Class<?> clazz = _reimbursementItemRemoteModel.getClass();

                Method method = clazz.getMethod("setId", int.class);

                method.invoke(_reimbursementItemRemoteModel, id);
            } catch (Exception e) {
                throw new UnsupportedOperationException(e);
            }
        }
    }

    @Override
    public int getUserReimbursementId() {
        return _userReimbursementId;
    }

    @Override
    public void setUserReimbursementId(int userReimbursementId) {
        _userReimbursementId = userReimbursementId;

        if (_reimbursementItemRemoteModel != null) {
            try {
                Class<?> clazz = _reimbursementItemRemoteModel.getClass();

                Method method = clazz.getMethod("setUserReimbursementId",
                        int.class);

                method.invoke(_reimbursementItemRemoteModel, userReimbursementId);
            } catch (Exception e) {
                throw new UnsupportedOperationException(e);
            }
        }
    }

    @Override
    public Date getBillDate() {
        return _billDate;
    }

    @Override
    public void setBillDate(Date billDate) {
        _billDate = billDate;

        if (_reimbursementItemRemoteModel != null) {
            try {
                Class<?> clazz = _reimbursementItemRemoteModel.getClass();

                Method method = clazz.getMethod("setBillDate", Date.class);

                method.invoke(_reimbursementItemRemoteModel, billDate);
            } catch (Exception e) {
                throw new UnsupportedOperationException(e);
            }
        }
    }

    @Override
    public String getDescription() {
        return _description;
    }

    @Override
    public void setDescription(String description) {
        _description = description;

        if (_reimbursementItemRemoteModel != null) {
            try {
                Class<?> clazz = _reimbursementItemRemoteModel.getClass();

                Method method = clazz.getMethod("setDescription", String.class);

                method.invoke(_reimbursementItemRemoteModel, description);
            } catch (Exception e) {
                throw new UnsupportedOperationException(e);
            }
        }
    }

    @Override
    public int getBillAmount() {
        return _billAmount;
    }

    @Override
    public void setBillAmount(int billAmount) {
        _billAmount = billAmount;

        if (_reimbursementItemRemoteModel != null) {
            try {
                Class<?> clazz = _reimbursementItemRemoteModel.getClass();

                Method method = clazz.getMethod("setBillAmount", int.class);

                method.invoke(_reimbursementItemRemoteModel, billAmount);
            } catch (Exception e) {
                throw new UnsupportedOperationException(e);
            }
        }
    }

    @Override
    public String getBillCategory() {
        return _billCategory;
    }

    @Override
    public void setBillCategory(String billCategory) {
        _billCategory = billCategory;

        if (_reimbursementItemRemoteModel != null) {
            try {
                Class<?> clazz = _reimbursementItemRemoteModel.getClass();

                Method method = clazz.getMethod("setBillCategory", String.class);

                method.invoke(_reimbursementItemRemoteModel, billCategory);
            } catch (Exception e) {
                throw new UnsupportedOperationException(e);
            }
        }
    }

    @Override
    public Blob getDocument() {
        return _document;
    }

    @Override
    public void setDocument(Blob document) {
        _document = document;

        if (_reimbursementItemRemoteModel != null) {
            try {
                Class<?> clazz = _reimbursementItemRemoteModel.getClass();

                Method method = clazz.getMethod("setDocument", Blob.class);

                method.invoke(_reimbursementItemRemoteModel, document);
            } catch (Exception e) {
                throw new UnsupportedOperationException(e);
            }
        }
    }

    public BaseModel<?> getReimbursementItemRemoteModel() {
        return _reimbursementItemRemoteModel;
    }

    public void setReimbursementItemRemoteModel(
        BaseModel<?> reimbursementItemRemoteModel) {
        _reimbursementItemRemoteModel = reimbursementItemRemoteModel;
    }

    public Object invokeOnRemoteModel(String methodName,
        Class<?>[] parameterTypes, Object[] parameterValues)
        throws Exception {
        Object[] remoteParameterValues = new Object[parameterValues.length];

        for (int i = 0; i < parameterValues.length; i++) {
            if (parameterValues[i] != null) {
                remoteParameterValues[i] = ClpSerializer.translateInput(parameterValues[i]);
            }
        }

        Class<?> remoteModelClass = _reimbursementItemRemoteModel.getClass();

        ClassLoader remoteModelClassLoader = remoteModelClass.getClassLoader();

        Class<?>[] remoteParameterTypes = new Class[parameterTypes.length];

        for (int i = 0; i < parameterTypes.length; i++) {
            if (parameterTypes[i].isPrimitive()) {
                remoteParameterTypes[i] = parameterTypes[i];
            } else {
                String parameterTypeName = parameterTypes[i].getName();

                remoteParameterTypes[i] = remoteModelClassLoader.loadClass(parameterTypeName);
            }
        }

        Method method = remoteModelClass.getMethod(methodName,
                remoteParameterTypes);

        Object returnValue = method.invoke(_reimbursementItemRemoteModel,
                remoteParameterValues);

        if (returnValue != null) {
            returnValue = ClpSerializer.translateOutput(returnValue);
        }

        return returnValue;
    }

    @Override
    public void persist() throws SystemException {
        if (this.isNew()) {
            ReimbursementItemLocalServiceUtil.addReimbursementItem(this);
        } else {
            ReimbursementItemLocalServiceUtil.updateReimbursementItem(this);
        }
    }

    @Override
    public ReimbursementItem toEscapedModel() {
        return (ReimbursementItem) ProxyUtil.newProxyInstance(ReimbursementItem.class.getClassLoader(),
            new Class[] { ReimbursementItem.class },
            new AutoEscapeBeanHandler(this));
    }

    @Override
    public Object clone() {
        ReimbursementItemClp clone = new ReimbursementItemClp();

        clone.setId(getId());
        clone.setUserReimbursementId(getUserReimbursementId());
        clone.setBillDate(getBillDate());
        clone.setDescription(getDescription());
        clone.setBillAmount(getBillAmount());
        clone.setBillCategory(getBillCategory());
        clone.setDocument(getDocument());

        return clone;
    }

    @Override
    public int compareTo(ReimbursementItem reimbursementItem) {
        int primaryKey = reimbursementItem.getPrimaryKey();

        if (getPrimaryKey() < primaryKey) {
            return -1;
        } else if (getPrimaryKey() > primaryKey) {
            return 1;
        } else {
            return 0;
        }
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }

        if (!(obj instanceof ReimbursementItemClp)) {
            return false;
        }

        ReimbursementItemClp reimbursementItem = (ReimbursementItemClp) obj;

        int primaryKey = reimbursementItem.getPrimaryKey();

        if (getPrimaryKey() == primaryKey) {
            return true;
        } else {
            return false;
        }
    }

    @Override
    public int hashCode() {
        return getPrimaryKey();
    }

    @Override
    public String toString() {
        StringBundler sb = new StringBundler(15);

        sb.append("{id=");
        sb.append(getId());
        sb.append(", userReimbursementId=");
        sb.append(getUserReimbursementId());
        sb.append(", billDate=");
        sb.append(getBillDate());
        sb.append(", description=");
        sb.append(getDescription());
        sb.append(", billAmount=");
        sb.append(getBillAmount());
        sb.append(", billCategory=");
        sb.append(getBillCategory());
        sb.append(", document=");
        sb.append(getDocument());
        sb.append("}");

        return sb.toString();
    }

    @Override
    public String toXmlString() {
        StringBundler sb = new StringBundler(25);

        sb.append("<model><model-name>");
        sb.append("com.xebia.xifire.model.ReimbursementItem");
        sb.append("</model-name>");

        sb.append(
            "<column><column-name>id</column-name><column-value><![CDATA[");
        sb.append(getId());
        sb.append("]]></column-value></column>");
        sb.append(
            "<column><column-name>userReimbursementId</column-name><column-value><![CDATA[");
        sb.append(getUserReimbursementId());
        sb.append("]]></column-value></column>");
        sb.append(
            "<column><column-name>billDate</column-name><column-value><![CDATA[");
        sb.append(getBillDate());
        sb.append("]]></column-value></column>");
        sb.append(
            "<column><column-name>description</column-name><column-value><![CDATA[");
        sb.append(getDescription());
        sb.append("]]></column-value></column>");
        sb.append(
            "<column><column-name>billAmount</column-name><column-value><![CDATA[");
        sb.append(getBillAmount());
        sb.append("]]></column-value></column>");
        sb.append(
            "<column><column-name>billCategory</column-name><column-value><![CDATA[");
        sb.append(getBillCategory());
        sb.append("]]></column-value></column>");
        sb.append(
            "<column><column-name>document</column-name><column-value><![CDATA[");
        sb.append(getDocument());
        sb.append("]]></column-value></column>");

        sb.append("</model>");

        return sb.toString();
    }
}
