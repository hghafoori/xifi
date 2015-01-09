package com.xebia.xifire.service.impl;

import com.liferay.portal.kernel.exception.SystemException;
import com.xebia.xifire.model.Salary;
import com.xebia.xifire.service.base.SalaryLocalServiceBaseImpl;
import com.xebia.xifire.service.persistence.SalaryPersistence;

/**
 * The implementation of the salary local service.
 *
 * <p>
 * All custom service methods should be put in this class. Whenever methods are added, rerun ServiceBuilder to copy their definitions into the {@link com.xebia.xifire.service.SalaryLocalService} interface.
 *
 * <p>
 * This is a local service. Methods of this service will not have security checks based on the propagated JAAS credentials because this service can only be accessed from within the same VM.
 * </p>
 *
 * @author Brian Wing Shun Chan
 * @see com.xebia.xifire.service.base.SalaryLocalServiceBaseImpl
 * @see com.xebia.xifire.service.SalaryLocalServiceUtil
 */
public class SalaryLocalServiceImpl extends SalaryLocalServiceBaseImpl {
    /*
     * NOTE FOR DEVELOPERS:
     *
     * Never reference this interface directly. Always use {@link com.xebia.xifire.service.SalaryLocalServiceUtil} to access the salary local service.
     */
	
	public Salary findByUserId(int userId) throws SystemException {
		return salaryPersistence.fetchByUserId(userId);
	}
	
	public Salary findByUserIdAndYear(int userId, int year) throws SystemException {
		return salaryPersistence.fetchByUserIdYear(userId, year);
	}
	
	public Salary findByUserIdMonthAndYear(int userId, int month, int year) throws SystemException {
		return salaryPersistence.fetchByUserIdMonthAndYear(userId, month, year);
	}
}
