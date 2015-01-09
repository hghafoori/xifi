package com.xebia.xifire.model;

import com.liferay.portal.kernel.bean.AutoEscapeBeanHandler;
import com.liferay.portal.kernel.exception.SystemException;
import com.liferay.portal.kernel.util.ProxyUtil;
import com.liferay.portal.kernel.util.StringBundler;
import com.liferay.portal.model.BaseModel;
import com.liferay.portal.model.impl.BaseModelImpl;
import com.liferay.portal.util.PortalUtil;

import com.xebia.xifire.service.ClpSerializer;
import com.xebia.xifire.service.EmployeeDetailLocalServiceUtil;

import java.io.Serializable;

import java.lang.reflect.Method;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;


public class EmployeeDetailClp extends BaseModelImpl<EmployeeDetail>
    implements EmployeeDetail {
    private long _id;
    private long _userId;
    private String _userUuid;
    private String _employeeCode;
    private String _designation;
    private String _location;
    private String _department;
    private String _pfNumber;
    private Date _doj;
    private String _bankAccount;
    private String _panNumber;
    private BaseModel<?> _employeeDetailRemoteModel;

    public EmployeeDetailClp() {
    }

    @Override
    public Class<?> getModelClass() {
        return EmployeeDetail.class;
    }

    @Override
    public String getModelClassName() {
        return EmployeeDetail.class.getName();
    }

    @Override
    public long getPrimaryKey() {
        return _id;
    }

    @Override
    public void setPrimaryKey(long primaryKey) {
        setId(primaryKey);
    }

    @Override
    public Serializable getPrimaryKeyObj() {
        return _id;
    }

    @Override
    public void setPrimaryKeyObj(Serializable primaryKeyObj) {
        setPrimaryKey(((Long) primaryKeyObj).longValue());
    }

    @Override
    public Map<String, Object> getModelAttributes() {
        Map<String, Object> attributes = new HashMap<String, Object>();

        attributes.put("id", getId());
        attributes.put("userId", getUserId());
        attributes.put("employeeCode", getEmployeeCode());
        attributes.put("designation", getDesignation());
        attributes.put("location", getLocation());
        attributes.put("department", getDepartment());
        attributes.put("pfNumber", getPfNumber());
        attributes.put("doj", getDoj());
        attributes.put("bankAccount", getBankAccount());
        attributes.put("panNumber", getPanNumber());

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

        String employeeCode = (String) attributes.get("employeeCode");

        if (employeeCode != null) {
            setEmployeeCode(employeeCode);
        }

        String designation = (String) attributes.get("designation");

        if (designation != null) {
            setDesignation(designation);
        }

        String location = (String) attributes.get("location");

        if (location != null) {
            setLocation(location);
        }

        String department = (String) attributes.get("department");

        if (department != null) {
            setDepartment(department);
        }

        String pfNumber = (String) attributes.get("pfNumber");

        if (pfNumber != null) {
            setPfNumber(pfNumber);
        }

        Date doj = (Date) attributes.get("doj");

        if (doj != null) {
            setDoj(doj);
        }

        String bankAccount = (String) attributes.get("bankAccount");

        if (bankAccount != null) {
            setBankAccount(bankAccount);
        }

        String panNumber = (String) attributes.get("panNumber");

        if (panNumber != null) {
            setPanNumber(panNumber);
        }
    }

    @Override
    public long getId() {
        return _id;
    }

    @Override
    public void setId(long id) {
        _id = id;

        if (_employeeDetailRemoteModel != null) {
            try {
                Class<?> clazz = _employeeDetailRemoteModel.getClass();

                Method method = clazz.getMethod("setId", long.class);

                method.invoke(_employeeDetailRemoteModel, id);
            } catch (Exception e) {
                throw new UnsupportedOperationException(e);
            }
        }
    }

    @Override
    public long getUserId() {
        return _userId;
    }

    @Override
    public void setUserId(long userId) {
        _userId = userId;

        if (_employeeDetailRemoteModel != null) {
            try {
                Class<?> clazz = _employeeDetailRemoteModel.getClass();

                Method method = clazz.getMethod("setUserId", long.class);

                method.invoke(_employeeDetailRemoteModel, userId);
            } catch (Exception e) {
                throw new UnsupportedOperationException(e);
            }
        }
    }

    @Override
    public String getUserUuid() throws SystemException {
        return PortalUtil.getUserValue(getUserId(), "uuid", _userUuid);
    }

    @Override
    public void setUserUuid(String userUuid) {
        _userUuid = userUuid;
    }

    @Override
    public String getEmployeeCode() {
        return _employeeCode;
    }

    @Override
    public void setEmployeeCode(String employeeCode) {
        _employeeCode = employeeCode;

        if (_employeeDetailRemoteModel != null) {
            try {
                Class<?> clazz = _employeeDetailRemoteModel.getClass();

                Method method = clazz.getMethod("setEmployeeCode", String.class);

                method.invoke(_employeeDetailRemoteModel, employeeCode);
            } catch (Exception e) {
                throw new UnsupportedOperationException(e);
            }
        }
    }

    @Override
    public String getDesignation() {
        return _designation;
    }

    @Override
    public void setDesignation(String designation) {
        _designation = designation;

        if (_employeeDetailRemoteModel != null) {
            try {
                Class<?> clazz = _employeeDetailRemoteModel.getClass();

                Method method = clazz.getMethod("setDesignation", String.class);

                method.invoke(_employeeDetailRemoteModel, designation);
            } catch (Exception e) {
                throw new UnsupportedOperationException(e);
            }
        }
    }

    @Override
    public String getLocation() {
        return _location;
    }

    @Override
    public void setLocation(String location) {
        _location = location;

        if (_employeeDetailRemoteModel != null) {
            try {
                Class<?> clazz = _employeeDetailRemoteModel.getClass();

                Method method = clazz.getMethod("setLocation", String.class);

                method.invoke(_employeeDetailRemoteModel, location);
            } catch (Exception e) {
                throw new UnsupportedOperationException(e);
            }
        }
    }

    @Override
    public String getDepartment() {
        return _department;
    }

    @Override
    public void setDepartment(String department) {
        _department = department;

        if (_employeeDetailRemoteModel != null) {
            try {
                Class<?> clazz = _employeeDetailRemoteModel.getClass();

                Method method = clazz.getMethod("setDepartment", String.class);

                method.invoke(_employeeDetailRemoteModel, department);
            } catch (Exception e) {
                throw new UnsupportedOperationException(e);
            }
        }
    }

    @Override
    public String getPfNumber() {
        return _pfNumber;
    }

    @Override
    public void setPfNumber(String pfNumber) {
        _pfNumber = pfNumber;

        if (_employeeDetailRemoteModel != null) {
            try {
                Class<?> clazz = _employeeDetailRemoteModel.getClass();

                Method method = clazz.getMethod("setPfNumber", String.class);

                method.invoke(_employeeDetailRemoteModel, pfNumber);
            } catch (Exception e) {
                throw new UnsupportedOperationException(e);
            }
        }
    }

    @Override
    public Date getDoj() {
        return _doj;
    }

    @Override
    public void setDoj(Date doj) {
        _doj = doj;

        if (_employeeDetailRemoteModel != null) {
            try {
                Class<?> clazz = _employeeDetailRemoteModel.getClass();

                Method method = clazz.getMethod("setDoj", Date.class);

                method.invoke(_employeeDetailRemoteModel, doj);
            } catch (Exception e) {
                throw new UnsupportedOperationException(e);
            }
        }
    }

    @Override
    public String getBankAccount() {
        return _bankAccount;
    }

    @Override
    public void setBankAccount(String bankAccount) {
        _bankAccount = bankAccount;

        if (_employeeDetailRemoteModel != null) {
            try {
                Class<?> clazz = _employeeDetailRemoteModel.getClass();

                Method method = clazz.getMethod("setBankAccount", String.class);

                method.invoke(_employeeDetailRemoteModel, bankAccount);
            } catch (Exception e) {
                throw new UnsupportedOperationException(e);
            }
        }
    }

    @Override
    public String getPanNumber() {
        return _panNumber;
    }

    @Override
    public void setPanNumber(String panNumber) {
        _panNumber = panNumber;

        if (_employeeDetailRemoteModel != null) {
            try {
                Class<?> clazz = _employeeDetailRemoteModel.getClass();

                Method method = clazz.getMethod("setPanNumber", String.class);

                method.invoke(_employeeDetailRemoteModel, panNumber);
            } catch (Exception e) {
                throw new UnsupportedOperationException(e);
            }
        }
    }

    public BaseModel<?> getEmployeeDetailRemoteModel() {
        return _employeeDetailRemoteModel;
    }

    public void setEmployeeDetailRemoteModel(
        BaseModel<?> employeeDetailRemoteModel) {
        _employeeDetailRemoteModel = employeeDetailRemoteModel;
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

        Class<?> remoteModelClass = _employeeDetailRemoteModel.getClass();

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

        Object returnValue = method.invoke(_employeeDetailRemoteModel,
                remoteParameterValues);

        if (returnValue != null) {
            returnValue = ClpSerializer.translateOutput(returnValue);
        }

        return returnValue;
    }

    @Override
    public void persist() throws SystemException {
        if (this.isNew()) {
            EmployeeDetailLocalServiceUtil.addEmployeeDetail(this);
        } else {
            EmployeeDetailLocalServiceUtil.updateEmployeeDetail(this);
        }
    }

    @Override
    public EmployeeDetail toEscapedModel() {
        return (EmployeeDetail) ProxyUtil.newProxyInstance(EmployeeDetail.class.getClassLoader(),
            new Class[] { EmployeeDetail.class },
            new AutoEscapeBeanHandler(this));
    }

    @Override
    public Object clone() {
        EmployeeDetailClp clone = new EmployeeDetailClp();

        clone.setId(getId());
        clone.setUserId(getUserId());
        clone.setEmployeeCode(getEmployeeCode());
        clone.setDesignation(getDesignation());
        clone.setLocation(getLocation());
        clone.setDepartment(getDepartment());
        clone.setPfNumber(getPfNumber());
        clone.setDoj(getDoj());
        clone.setBankAccount(getBankAccount());
        clone.setPanNumber(getPanNumber());

        return clone;
    }

    @Override
    public int compareTo(EmployeeDetail employeeDetail) {
        long primaryKey = employeeDetail.getPrimaryKey();

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

        if (!(obj instanceof EmployeeDetailClp)) {
            return false;
        }

        EmployeeDetailClp employeeDetail = (EmployeeDetailClp) obj;

        long primaryKey = employeeDetail.getPrimaryKey();

        if (getPrimaryKey() == primaryKey) {
            return true;
        } else {
            return false;
        }
    }

    @Override
    public int hashCode() {
        return (int) getPrimaryKey();
    }

    @Override
    public String toString() {
        StringBundler sb = new StringBundler(21);

        sb.append("{id=");
        sb.append(getId());
        sb.append(", userId=");
        sb.append(getUserId());
        sb.append(", employeeCode=");
        sb.append(getEmployeeCode());
        sb.append(", designation=");
        sb.append(getDesignation());
        sb.append(", location=");
        sb.append(getLocation());
        sb.append(", department=");
        sb.append(getDepartment());
        sb.append(", pfNumber=");
        sb.append(getPfNumber());
        sb.append(", doj=");
        sb.append(getDoj());
        sb.append(", bankAccount=");
        sb.append(getBankAccount());
        sb.append(", panNumber=");
        sb.append(getPanNumber());
        sb.append("}");

        return sb.toString();
    }

    @Override
    public String toXmlString() {
        StringBundler sb = new StringBundler(34);

        sb.append("<model><model-name>");
        sb.append("com.xebia.xifire.model.EmployeeDetail");
        sb.append("</model-name>");

        sb.append(
            "<column><column-name>id</column-name><column-value><![CDATA[");
        sb.append(getId());
        sb.append("]]></column-value></column>");
        sb.append(
            "<column><column-name>userId</column-name><column-value><![CDATA[");
        sb.append(getUserId());
        sb.append("]]></column-value></column>");
        sb.append(
            "<column><column-name>employeeCode</column-name><column-value><![CDATA[");
        sb.append(getEmployeeCode());
        sb.append("]]></column-value></column>");
        sb.append(
            "<column><column-name>designation</column-name><column-value><![CDATA[");
        sb.append(getDesignation());
        sb.append("]]></column-value></column>");
        sb.append(
            "<column><column-name>location</column-name><column-value><![CDATA[");
        sb.append(getLocation());
        sb.append("]]></column-value></column>");
        sb.append(
            "<column><column-name>department</column-name><column-value><![CDATA[");
        sb.append(getDepartment());
        sb.append("]]></column-value></column>");
        sb.append(
            "<column><column-name>pfNumber</column-name><column-value><![CDATA[");
        sb.append(getPfNumber());
        sb.append("]]></column-value></column>");
        sb.append(
            "<column><column-name>doj</column-name><column-value><![CDATA[");
        sb.append(getDoj());
        sb.append("]]></column-value></column>");
        sb.append(
            "<column><column-name>bankAccount</column-name><column-value><![CDATA[");
        sb.append(getBankAccount());
        sb.append("]]></column-value></column>");
        sb.append(
            "<column><column-name>panNumber</column-name><column-value><![CDATA[");
        sb.append(getPanNumber());
        sb.append("]]></column-value></column>");

        sb.append("</model>");

        return sb.toString();
    }
}
