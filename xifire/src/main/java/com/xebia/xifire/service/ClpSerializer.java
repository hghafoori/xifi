package com.xebia.xifire.service;

import com.liferay.portal.kernel.exception.PortalException;
import com.liferay.portal.kernel.exception.SystemException;
import com.liferay.portal.kernel.io.unsync.UnsyncByteArrayInputStream;
import com.liferay.portal.kernel.io.unsync.UnsyncByteArrayOutputStream;
import com.liferay.portal.kernel.log.Log;
import com.liferay.portal.kernel.log.LogFactoryUtil;
import com.liferay.portal.kernel.util.ClassLoaderObjectInputStream;
import com.liferay.portal.kernel.util.PropsUtil;
import com.liferay.portal.kernel.util.Validator;
import com.liferay.portal.model.BaseModel;

import com.xebia.xifire.model.EmployeeDetailClp;
import com.xebia.xifire.model.ReimbursementItemClp;
import com.xebia.xifire.model.SalaryClp;
import com.xebia.xifire.model.UserReimbursementClp;

import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;

import java.lang.reflect.Method;

import java.util.ArrayList;
import java.util.List;


public class ClpSerializer {
    private static Log _log = LogFactoryUtil.getLog(ClpSerializer.class);
    private static String _servletContextName;
    private static boolean _useReflectionToTranslateThrowable = true;

    public static String getServletContextName() {
        if (Validator.isNotNull(_servletContextName)) {
            return _servletContextName;
        }

        synchronized (ClpSerializer.class) {
            if (Validator.isNotNull(_servletContextName)) {
                return _servletContextName;
            }

            try {
                ClassLoader classLoader = ClpSerializer.class.getClassLoader();

                Class<?> portletPropsClass = classLoader.loadClass(
                        "com.liferay.util.portlet.PortletProps");

                Method getMethod = portletPropsClass.getMethod("get",
                        new Class<?>[] { String.class });

                String portletPropsServletContextName = (String) getMethod.invoke(null,
                        "xifire-deployment-context");

                if (Validator.isNotNull(portletPropsServletContextName)) {
                    _servletContextName = portletPropsServletContextName;
                }
            } catch (Throwable t) {
                if (_log.isInfoEnabled()) {
                    _log.info(
                        "Unable to locate deployment context from portlet properties");
                }
            }

            if (Validator.isNull(_servletContextName)) {
                try {
                    String propsUtilServletContextName = PropsUtil.get(
                            "xifire-deployment-context");

                    if (Validator.isNotNull(propsUtilServletContextName)) {
                        _servletContextName = propsUtilServletContextName;
                    }
                } catch (Throwable t) {
                    if (_log.isInfoEnabled()) {
                        _log.info(
                            "Unable to locate deployment context from portal properties");
                    }
                }
            }

            if (Validator.isNull(_servletContextName)) {
                _servletContextName = "xifire";
            }

            return _servletContextName;
        }
    }

    public static Object translateInput(BaseModel<?> oldModel) {
        Class<?> oldModelClass = oldModel.getClass();

        String oldModelClassName = oldModelClass.getName();

        if (oldModelClassName.equals(EmployeeDetailClp.class.getName())) {
            return translateInputEmployeeDetail(oldModel);
        }

        if (oldModelClassName.equals(ReimbursementItemClp.class.getName())) {
            return translateInputReimbursementItem(oldModel);
        }

        if (oldModelClassName.equals(SalaryClp.class.getName())) {
            return translateInputSalary(oldModel);
        }

        if (oldModelClassName.equals(UserReimbursementClp.class.getName())) {
            return translateInputUserReimbursement(oldModel);
        }

        return oldModel;
    }

    public static Object translateInput(List<Object> oldList) {
        List<Object> newList = new ArrayList<Object>(oldList.size());

        for (int i = 0; i < oldList.size(); i++) {
            Object curObj = oldList.get(i);

            newList.add(translateInput(curObj));
        }

        return newList;
    }

    public static Object translateInputEmployeeDetail(BaseModel<?> oldModel) {
        EmployeeDetailClp oldClpModel = (EmployeeDetailClp) oldModel;

        BaseModel<?> newModel = oldClpModel.getEmployeeDetailRemoteModel();

        newModel.setModelAttributes(oldClpModel.getModelAttributes());

        return newModel;
    }

    public static Object translateInputReimbursementItem(BaseModel<?> oldModel) {
        ReimbursementItemClp oldClpModel = (ReimbursementItemClp) oldModel;

        BaseModel<?> newModel = oldClpModel.getReimbursementItemRemoteModel();

        newModel.setModelAttributes(oldClpModel.getModelAttributes());

        return newModel;
    }

    public static Object translateInputSalary(BaseModel<?> oldModel) {
        SalaryClp oldClpModel = (SalaryClp) oldModel;

        BaseModel<?> newModel = oldClpModel.getSalaryRemoteModel();

        newModel.setModelAttributes(oldClpModel.getModelAttributes());

        return newModel;
    }

    public static Object translateInputUserReimbursement(BaseModel<?> oldModel) {
        UserReimbursementClp oldClpModel = (UserReimbursementClp) oldModel;

        BaseModel<?> newModel = oldClpModel.getUserReimbursementRemoteModel();

        newModel.setModelAttributes(oldClpModel.getModelAttributes());

        return newModel;
    }

    public static Object translateInput(Object obj) {
        if (obj instanceof BaseModel<?>) {
            return translateInput((BaseModel<?>) obj);
        } else if (obj instanceof List<?>) {
            return translateInput((List<Object>) obj);
        } else {
            return obj;
        }
    }

    public static Object translateOutput(BaseModel<?> oldModel) {
        Class<?> oldModelClass = oldModel.getClass();

        String oldModelClassName = oldModelClass.getName();

        if (oldModelClassName.equals(
                    "com.xebia.xifire.model.impl.EmployeeDetailImpl")) {
            return translateOutputEmployeeDetail(oldModel);
        }

        if (oldModelClassName.equals(
                    "com.xebia.xifire.model.impl.ReimbursementItemImpl")) {
            return translateOutputReimbursementItem(oldModel);
        }

        if (oldModelClassName.equals("com.xebia.xifire.model.impl.SalaryImpl")) {
            return translateOutputSalary(oldModel);
        }

        if (oldModelClassName.equals(
                    "com.xebia.xifire.model.impl.UserReimbursementImpl")) {
            return translateOutputUserReimbursement(oldModel);
        }

        return oldModel;
    }

    public static Object translateOutput(List<Object> oldList) {
        List<Object> newList = new ArrayList<Object>(oldList.size());

        for (int i = 0; i < oldList.size(); i++) {
            Object curObj = oldList.get(i);

            newList.add(translateOutput(curObj));
        }

        return newList;
    }

    public static Object translateOutput(Object obj) {
        if (obj instanceof BaseModel<?>) {
            return translateOutput((BaseModel<?>) obj);
        } else if (obj instanceof List<?>) {
            return translateOutput((List<Object>) obj);
        } else {
            return obj;
        }
    }

    public static Throwable translateThrowable(Throwable throwable) {
        if (_useReflectionToTranslateThrowable) {
            try {
                UnsyncByteArrayOutputStream unsyncByteArrayOutputStream = new UnsyncByteArrayOutputStream();
                ObjectOutputStream objectOutputStream = new ObjectOutputStream(unsyncByteArrayOutputStream);

                objectOutputStream.writeObject(throwable);

                objectOutputStream.flush();
                objectOutputStream.close();

                UnsyncByteArrayInputStream unsyncByteArrayInputStream = new UnsyncByteArrayInputStream(unsyncByteArrayOutputStream.unsafeGetByteArray(),
                        0, unsyncByteArrayOutputStream.size());

                Thread currentThread = Thread.currentThread();

                ClassLoader contextClassLoader = currentThread.getContextClassLoader();

                ObjectInputStream objectInputStream = new ClassLoaderObjectInputStream(unsyncByteArrayInputStream,
                        contextClassLoader);

                throwable = (Throwable) objectInputStream.readObject();

                objectInputStream.close();

                return throwable;
            } catch (SecurityException se) {
                if (_log.isInfoEnabled()) {
                    _log.info("Do not use reflection to translate throwable");
                }

                _useReflectionToTranslateThrowable = false;
            } catch (Throwable throwable2) {
                _log.error(throwable2, throwable2);

                return throwable2;
            }
        }

        Class<?> clazz = throwable.getClass();

        String className = clazz.getName();

        if (className.equals(PortalException.class.getName())) {
            return new PortalException();
        }

        if (className.equals(SystemException.class.getName())) {
            return new SystemException();
        }

        if (className.equals("com.xebia.xifire.NoSuchEmployeeDetailException")) {
            return new com.xebia.xifire.NoSuchEmployeeDetailException();
        }

        if (className.equals(
                    "com.xebia.xifire.NoSuchReimbursementItemException")) {
            return new com.xebia.xifire.NoSuchReimbursementItemException();
        }

        if (className.equals("com.xebia.xifire.NoSuchSalaryException")) {
            return new com.xebia.xifire.NoSuchSalaryException();
        }

        if (className.equals(
                    "com.xebia.xifire.NoSuchUserReimbursementException")) {
            return new com.xebia.xifire.NoSuchUserReimbursementException();
        }

        return throwable;
    }

    public static Object translateOutputEmployeeDetail(BaseModel<?> oldModel) {
        EmployeeDetailClp newModel = new EmployeeDetailClp();

        newModel.setModelAttributes(oldModel.getModelAttributes());

        newModel.setEmployeeDetailRemoteModel(oldModel);

        return newModel;
    }

    public static Object translateOutputReimbursementItem(BaseModel<?> oldModel) {
        ReimbursementItemClp newModel = new ReimbursementItemClp();

        newModel.setModelAttributes(oldModel.getModelAttributes());

        newModel.setReimbursementItemRemoteModel(oldModel);

        return newModel;
    }

    public static Object translateOutputSalary(BaseModel<?> oldModel) {
        SalaryClp newModel = new SalaryClp();

        newModel.setModelAttributes(oldModel.getModelAttributes());

        newModel.setSalaryRemoteModel(oldModel);

        return newModel;
    }

    public static Object translateOutputUserReimbursement(BaseModel<?> oldModel) {
        UserReimbursementClp newModel = new UserReimbursementClp();

        newModel.setModelAttributes(oldModel.getModelAttributes());

        newModel.setUserReimbursementRemoteModel(oldModel);

        return newModel;
    }
}
