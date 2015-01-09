<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet" %>
<%@ taglib uri="http://liferay.com/tld/aui" prefix="aui" %>
<%@ page import="com.liferay.portal.kernel.util.ParamUtil" %>
<%@ page import="com.liferay.portal.kernel.util.Validator" %>
<%@ page import="javax.portlet.PortletPreferences" %>
<portlet:defineObjects />
<portlet:actionURL name="submit" var="submitURL" />
<div class="container">
  <h2>Submit your Reimbursement</h2>
  <p>Some Text here</p>
  <form class="form-inline" role="form" action="<%=submitURL.toString() %>" method="post">
    <div class="form-group">
      <label class="sr-only" for="email">Category:</label>
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
    </div>
    <div class="form-group">
      <label class="sr-only" for="date">Date DD/MM/YYYY</label>
      <input type="text" class="form-control" id="date" placeholder="Date DD/MM/YYYY" name="billDate">
    </div>
    <div class="form-group">
      <label class="sr-only" for="amount">Rs</label>
      <input type="number" class="form-control" id="amount" placeholder="Enter password" name="billAmount">
    </div>
    <div class="form-group">
      <label class="sr-only" for="billDoc">Choose Invoice</label>
      <input type="number" class="form-control" id="billDoc" placeholder="Choose Invoice">
    </div>
    <button type="submit" class="btn btn-default">Submit</button>
    <button class="btn btn-default">Add Row</button>
  </form>
</div>


