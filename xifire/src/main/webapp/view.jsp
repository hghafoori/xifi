<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet" %>
<%@ taglib uri="http://liferay.com/tld/aui" prefix="aui" %>
<%@ page import="com.liferay.portal.kernel.util.ParamUtil" %>
<%@ page import="com.liferay.portal.kernel.util.Validator" %>
<%@ page import="javax.portlet.PortletPreferences" %>
<portlet:defineObjects />

<%
PortletPreferences prefs = renderRequest.getPreferences();

String greeting = (String)prefs.getValue(
    "greeting", "Hello! Welcome to our portal.");
%>

Praise the Lord.
    <aui:input label="greeting" name="greeting" type="text" value="<%= greeting %>" />


