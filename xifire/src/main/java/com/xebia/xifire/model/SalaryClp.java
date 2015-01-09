package com.xebia.xifire.model;

import com.liferay.portal.kernel.bean.AutoEscapeBeanHandler;
import com.liferay.portal.kernel.exception.SystemException;
import com.liferay.portal.kernel.util.ProxyUtil;
import com.liferay.portal.kernel.util.StringBundler;
import com.liferay.portal.model.BaseModel;
import com.liferay.portal.model.impl.BaseModelImpl;
import com.liferay.portal.util.PortalUtil;

import com.xebia.xifire.service.ClpSerializer;
import com.xebia.xifire.service.SalaryLocalServiceUtil;

import java.io.Serializable;

import java.lang.reflect.Method;

import java.util.HashMap;
import java.util.Map;


public class SalaryClp extends BaseModelImpl<Salary> implements Salary {
    private long _id;
    private long _userId;
    private String _userUuid;
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
    private BaseModel<?> _salaryRemoteModel;

    public SalaryClp() {
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

    @Override
    public long getId() {
        return _id;
    }

    @Override
    public void setId(long id) {
        _id = id;

        if (_salaryRemoteModel != null) {
            try {
                Class<?> clazz = _salaryRemoteModel.getClass();

                Method method = clazz.getMethod("setId", long.class);

                method.invoke(_salaryRemoteModel, id);
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

        if (_salaryRemoteModel != null) {
            try {
                Class<?> clazz = _salaryRemoteModel.getClass();

                Method method = clazz.getMethod("setUserId", long.class);

                method.invoke(_salaryRemoteModel, userId);
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
    public int getSalaryMonth() {
        return _salaryMonth;
    }

    @Override
    public void setSalaryMonth(int salaryMonth) {
        _salaryMonth = salaryMonth;

        if (_salaryRemoteModel != null) {
            try {
                Class<?> clazz = _salaryRemoteModel.getClass();

                Method method = clazz.getMethod("setSalaryMonth", int.class);

                method.invoke(_salaryRemoteModel, salaryMonth);
            } catch (Exception e) {
                throw new UnsupportedOperationException(e);
            }
        }
    }

    @Override
    public int getSalaryYear() {
        return _salaryYear;
    }

    @Override
    public void setSalaryYear(int salaryYear) {
        _salaryYear = salaryYear;

        if (_salaryRemoteModel != null) {
            try {
                Class<?> clazz = _salaryRemoteModel.getClass();

                Method method = clazz.getMethod("setSalaryYear", int.class);

                method.invoke(_salaryRemoteModel, salaryYear);
            } catch (Exception e) {
                throw new UnsupportedOperationException(e);
            }
        }
    }

    @Override
    public int getBasic() {
        return _basic;
    }

    @Override
    public void setBasic(int basic) {
        _basic = basic;

        if (_salaryRemoteModel != null) {
            try {
                Class<?> clazz = _salaryRemoteModel.getClass();

                Method method = clazz.getMethod("setBasic", int.class);

                method.invoke(_salaryRemoteModel, basic);
            } catch (Exception e) {
                throw new UnsupportedOperationException(e);
            }
        }
    }

    @Override
    public int getArrears() {
        return _arrears;
    }

    @Override
    public void setArrears(int arrears) {
        _arrears = arrears;

        if (_salaryRemoteModel != null) {
            try {
                Class<?> clazz = _salaryRemoteModel.getClass();

                Method method = clazz.getMethod("setArrears", int.class);

                method.invoke(_salaryRemoteModel, arrears);
            } catch (Exception e) {
                throw new UnsupportedOperationException(e);
            }
        }
    }

    @Override
    public int getOthers() {
        return _others;
    }

    @Override
    public void setOthers(int others) {
        _others = others;

        if (_salaryRemoteModel != null) {
            try {
                Class<?> clazz = _salaryRemoteModel.getClass();

                Method method = clazz.getMethod("setOthers", int.class);

                method.invoke(_salaryRemoteModel, others);
            } catch (Exception e) {
                throw new UnsupportedOperationException(e);
            }
        }
    }

    @Override
    public int getTds() {
        return _tds;
    }

    @Override
    public void setTds(int tds) {
        _tds = tds;

        if (_salaryRemoteModel != null) {
            try {
                Class<?> clazz = _salaryRemoteModel.getClass();

                Method method = clazz.getMethod("setTds", int.class);

                method.invoke(_salaryRemoteModel, tds);
            } catch (Exception e) {
                throw new UnsupportedOperationException(e);
            }
        }
    }

    @Override
    public int getLta() {
        return _lta;
    }

    @Override
    public void setLta(int lta) {
        _lta = lta;

        if (_salaryRemoteModel != null) {
            try {
                Class<?> clazz = _salaryRemoteModel.getClass();

                Method method = clazz.getMethod("setLta", int.class);

                method.invoke(_salaryRemoteModel, lta);
            } catch (Exception e) {
                throw new UnsupportedOperationException(e);
            }
        }
    }

    @Override
    public int getHRA() {
        return _HRA;
    }

    @Override
    public void setHRA(int HRA) {
        _HRA = HRA;

        if (_salaryRemoteModel != null) {
            try {
                Class<?> clazz = _salaryRemoteModel.getClass();

                Method method = clazz.getMethod("setHRA", int.class);

                method.invoke(_salaryRemoteModel, HRA);
            } catch (Exception e) {
                throw new UnsupportedOperationException(e);
            }
        }
    }

    @Override
    public int getSpecialAllowance() {
        return _specialAllowance;
    }

    @Override
    public void setSpecialAllowance(int specialAllowance) {
        _specialAllowance = specialAllowance;

        if (_salaryRemoteModel != null) {
            try {
                Class<?> clazz = _salaryRemoteModel.getClass();

                Method method = clazz.getMethod("setSpecialAllowance", int.class);

                method.invoke(_salaryRemoteModel, specialAllowance);
            } catch (Exception e) {
                throw new UnsupportedOperationException(e);
            }
        }
    }

    @Override
    public int getAttireAllowance() {
        return _attireAllowance;
    }

    @Override
    public void setAttireAllowance(int attireAllowance) {
        _attireAllowance = attireAllowance;

        if (_salaryRemoteModel != null) {
            try {
                Class<?> clazz = _salaryRemoteModel.getClass();

                Method method = clazz.getMethod("setAttireAllowance", int.class);

                method.invoke(_salaryRemoteModel, attireAllowance);
            } catch (Exception e) {
                throw new UnsupportedOperationException(e);
            }
        }
    }

    @Override
    public int getFoodAllowance() {
        return _foodAllowance;
    }

    @Override
    public void setFoodAllowance(int foodAllowance) {
        _foodAllowance = foodAllowance;

        if (_salaryRemoteModel != null) {
            try {
                Class<?> clazz = _salaryRemoteModel.getClass();

                Method method = clazz.getMethod("setFoodAllowance", int.class);

                method.invoke(_salaryRemoteModel, foodAllowance);
            } catch (Exception e) {
                throw new UnsupportedOperationException(e);
            }
        }
    }

    @Override
    public int getEducationCess() {
        return _educationCess;
    }

    @Override
    public void setEducationCess(int educationCess) {
        _educationCess = educationCess;

        if (_salaryRemoteModel != null) {
            try {
                Class<?> clazz = _salaryRemoteModel.getClass();

                Method method = clazz.getMethod("setEducationCess", int.class);

                method.invoke(_salaryRemoteModel, educationCess);
            } catch (Exception e) {
                throw new UnsupportedOperationException(e);
            }
        }
    }

    @Override
    public int getPf() {
        return _pf;
    }

    @Override
    public void setPf(int pf) {
        _pf = pf;

        if (_salaryRemoteModel != null) {
            try {
                Class<?> clazz = _salaryRemoteModel.getClass();

                Method method = clazz.getMethod("setPf", int.class);

                method.invoke(_salaryRemoteModel, pf);
            } catch (Exception e) {
                throw new UnsupportedOperationException(e);
            }
        }
    }

    @Override
    public int getEpf() {
        return _epf;
    }

    @Override
    public void setEpf(int epf) {
        _epf = epf;

        if (_salaryRemoteModel != null) {
            try {
                Class<?> clazz = _salaryRemoteModel.getClass();

                Method method = clazz.getMethod("setEpf", int.class);

                method.invoke(_salaryRemoteModel, epf);
            } catch (Exception e) {
                throw new UnsupportedOperationException(e);
            }
        }
    }

    @Override
    public int getLaborWelfare() {
        return _laborWelfare;
    }

    @Override
    public void setLaborWelfare(int laborWelfare) {
        _laborWelfare = laborWelfare;

        if (_salaryRemoteModel != null) {
            try {
                Class<?> clazz = _salaryRemoteModel.getClass();

                Method method = clazz.getMethod("setLaborWelfare", int.class);

                method.invoke(_salaryRemoteModel, laborWelfare);
            } catch (Exception e) {
                throw new UnsupportedOperationException(e);
            }
        }
    }

    @Override
    public int getMediclaim() {
        return _mediclaim;
    }

    @Override
    public void setMediclaim(int mediclaim) {
        _mediclaim = mediclaim;

        if (_salaryRemoteModel != null) {
            try {
                Class<?> clazz = _salaryRemoteModel.getClass();

                Method method = clazz.getMethod("setMediclaim", int.class);

                method.invoke(_salaryRemoteModel, mediclaim);
            } catch (Exception e) {
                throw new UnsupportedOperationException(e);
            }
        }
    }

    @Override
    public int getOtherDeduction() {
        return _otherDeduction;
    }

    @Override
    public void setOtherDeduction(int otherDeduction) {
        _otherDeduction = otherDeduction;

        if (_salaryRemoteModel != null) {
            try {
                Class<?> clazz = _salaryRemoteModel.getClass();

                Method method = clazz.getMethod("setOtherDeduction", int.class);

                method.invoke(_salaryRemoteModel, otherDeduction);
            } catch (Exception e) {
                throw new UnsupportedOperationException(e);
            }
        }
    }

    public BaseModel<?> getSalaryRemoteModel() {
        return _salaryRemoteModel;
    }

    public void setSalaryRemoteModel(BaseModel<?> salaryRemoteModel) {
        _salaryRemoteModel = salaryRemoteModel;
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

        Class<?> remoteModelClass = _salaryRemoteModel.getClass();

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

        Object returnValue = method.invoke(_salaryRemoteModel,
                remoteParameterValues);

        if (returnValue != null) {
            returnValue = ClpSerializer.translateOutput(returnValue);
        }

        return returnValue;
    }

    @Override
    public void persist() throws SystemException {
        if (this.isNew()) {
            SalaryLocalServiceUtil.addSalary(this);
        } else {
            SalaryLocalServiceUtil.updateSalary(this);
        }
    }

    @Override
    public Salary toEscapedModel() {
        return (Salary) ProxyUtil.newProxyInstance(Salary.class.getClassLoader(),
            new Class[] { Salary.class }, new AutoEscapeBeanHandler(this));
    }

    @Override
    public Object clone() {
        SalaryClp clone = new SalaryClp();

        clone.setId(getId());
        clone.setUserId(getUserId());
        clone.setSalaryMonth(getSalaryMonth());
        clone.setSalaryYear(getSalaryYear());
        clone.setBasic(getBasic());
        clone.setArrears(getArrears());
        clone.setOthers(getOthers());
        clone.setTds(getTds());
        clone.setLta(getLta());
        clone.setHRA(getHRA());
        clone.setSpecialAllowance(getSpecialAllowance());
        clone.setAttireAllowance(getAttireAllowance());
        clone.setFoodAllowance(getFoodAllowance());
        clone.setEducationCess(getEducationCess());
        clone.setPf(getPf());
        clone.setEpf(getEpf());
        clone.setLaborWelfare(getLaborWelfare());
        clone.setMediclaim(getMediclaim());
        clone.setOtherDeduction(getOtherDeduction());

        return clone;
    }

    @Override
    public int compareTo(Salary salary) {
        long primaryKey = salary.getPrimaryKey();

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

        if (!(obj instanceof SalaryClp)) {
            return false;
        }

        SalaryClp salary = (SalaryClp) obj;

        long primaryKey = salary.getPrimaryKey();

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
        StringBundler sb = new StringBundler(39);

        sb.append("{id=");
        sb.append(getId());
        sb.append(", userId=");
        sb.append(getUserId());
        sb.append(", salaryMonth=");
        sb.append(getSalaryMonth());
        sb.append(", salaryYear=");
        sb.append(getSalaryYear());
        sb.append(", basic=");
        sb.append(getBasic());
        sb.append(", arrears=");
        sb.append(getArrears());
        sb.append(", others=");
        sb.append(getOthers());
        sb.append(", tds=");
        sb.append(getTds());
        sb.append(", lta=");
        sb.append(getLta());
        sb.append(", HRA=");
        sb.append(getHRA());
        sb.append(", specialAllowance=");
        sb.append(getSpecialAllowance());
        sb.append(", attireAllowance=");
        sb.append(getAttireAllowance());
        sb.append(", foodAllowance=");
        sb.append(getFoodAllowance());
        sb.append(", educationCess=");
        sb.append(getEducationCess());
        sb.append(", pf=");
        sb.append(getPf());
        sb.append(", epf=");
        sb.append(getEpf());
        sb.append(", laborWelfare=");
        sb.append(getLaborWelfare());
        sb.append(", mediclaim=");
        sb.append(getMediclaim());
        sb.append(", otherDeduction=");
        sb.append(getOtherDeduction());
        sb.append("}");

        return sb.toString();
    }

    @Override
    public String toXmlString() {
        StringBundler sb = new StringBundler(61);

        sb.append("<model><model-name>");
        sb.append("com.xebia.xifire.model.Salary");
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
            "<column><column-name>salaryMonth</column-name><column-value><![CDATA[");
        sb.append(getSalaryMonth());
        sb.append("]]></column-value></column>");
        sb.append(
            "<column><column-name>salaryYear</column-name><column-value><![CDATA[");
        sb.append(getSalaryYear());
        sb.append("]]></column-value></column>");
        sb.append(
            "<column><column-name>basic</column-name><column-value><![CDATA[");
        sb.append(getBasic());
        sb.append("]]></column-value></column>");
        sb.append(
            "<column><column-name>arrears</column-name><column-value><![CDATA[");
        sb.append(getArrears());
        sb.append("]]></column-value></column>");
        sb.append(
            "<column><column-name>others</column-name><column-value><![CDATA[");
        sb.append(getOthers());
        sb.append("]]></column-value></column>");
        sb.append(
            "<column><column-name>tds</column-name><column-value><![CDATA[");
        sb.append(getTds());
        sb.append("]]></column-value></column>");
        sb.append(
            "<column><column-name>lta</column-name><column-value><![CDATA[");
        sb.append(getLta());
        sb.append("]]></column-value></column>");
        sb.append(
            "<column><column-name>HRA</column-name><column-value><![CDATA[");
        sb.append(getHRA());
        sb.append("]]></column-value></column>");
        sb.append(
            "<column><column-name>specialAllowance</column-name><column-value><![CDATA[");
        sb.append(getSpecialAllowance());
        sb.append("]]></column-value></column>");
        sb.append(
            "<column><column-name>attireAllowance</column-name><column-value><![CDATA[");
        sb.append(getAttireAllowance());
        sb.append("]]></column-value></column>");
        sb.append(
            "<column><column-name>foodAllowance</column-name><column-value><![CDATA[");
        sb.append(getFoodAllowance());
        sb.append("]]></column-value></column>");
        sb.append(
            "<column><column-name>educationCess</column-name><column-value><![CDATA[");
        sb.append(getEducationCess());
        sb.append("]]></column-value></column>");
        sb.append(
            "<column><column-name>pf</column-name><column-value><![CDATA[");
        sb.append(getPf());
        sb.append("]]></column-value></column>");
        sb.append(
            "<column><column-name>epf</column-name><column-value><![CDATA[");
        sb.append(getEpf());
        sb.append("]]></column-value></column>");
        sb.append(
            "<column><column-name>laborWelfare</column-name><column-value><![CDATA[");
        sb.append(getLaborWelfare());
        sb.append("]]></column-value></column>");
        sb.append(
            "<column><column-name>mediclaim</column-name><column-value><![CDATA[");
        sb.append(getMediclaim());
        sb.append("]]></column-value></column>");
        sb.append(
            "<column><column-name>otherDeduction</column-name><column-value><![CDATA[");
        sb.append(getOtherDeduction());
        sb.append("]]></column-value></column>");

        sb.append("</model>");

        return sb.toString();
    }
}
