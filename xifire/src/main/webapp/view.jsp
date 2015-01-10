<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet" %>
<%@ taglib uri="http://liferay.com/tld/aui" prefix="aui" %>
<%@ page import="com.liferay.portal.kernel.util.ParamUtil" %>
<%@ page import="com.liferay.portal.kernel.util.Validator" %>
<%@ page import="javax.portlet.PortletPreferences" %>
<portlet:defineObjects />
<portlet:actionURL name="submit" var="submitURL" />
<div class="container">
  
  <form class="form-inline" role="form" action="<%=submitURL.toString() %>" method="post">
  
  <table class="table table-hover">
 <tr><td><h4>Submit your Reimbursement</h4></td><td></td></tr>

   <tr>
        <td>
      			<label class="sr-only" for="email">Category</label>
      	</td>
      <td>
      	<select class="form-control" id="category" name="category">
		      <option value="Apparel">Apparel</option>
		      <option value="Phone">Phone</option>
		      <option value="Internet">Internet</option>
		      <option value="Books">Books</option>
		      <option value="Medical">Medical</option>
		      <option value="Team_Outing">Team Outing</option>
		      <option value="Travel">Travel</option>
		      <option value="Training">Training</option>
      	</select>
    </td>
    </tr>
    <tr>
    <td>
      <label class="sr-only" for="date">Bill Date</label>
      </td><td>
      <input type="text" class="form-control" id="date" placeholder="DD/MM/YYYY" name="billDate">
      </td>
    </tr>
    <tr>
    <td>
      <label class="sr-only" for="amount">Bill Amount</label>
      </td><td>
      <input type="number" class="form-control" id="amount" placeholder="00" name="billAmount">
      </td>
    </tr>
    <tr>
    <td>
      <label class="sr-only" for="billDoc">Choose Invoice</label>
      </td><td>
      <input type="file" class="form-control" id="billDoc" placeholder="Choose Invoice">
      </td>
    </tr>
    <tr>
    <td>
    <button type="submit" class="btn btn-default">Submit</button>
    </td><td>
    <button class="btn btn-default">Add Row</button>
    </td>
    </tr>
    </table>
  </form>
</div>


