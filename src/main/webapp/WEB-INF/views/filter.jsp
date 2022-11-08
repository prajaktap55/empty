<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<h1>Host Management System-> Filter Management</h1>

<form name='Save' action="<c:url value='/save' />" method='GET'>

<select name="team" class="form-select" aria-label="Default select example">
	<option selected>Open this to select filter</option>
	<option value="Team">Team</option>
	<option value="Application">Application</option>
	<option value="Environment">Environment</option>
	<option value="IsActive">IsActive</option>
</select>


<select name="env" class="form-select" aria-label="Default select example">
	<option selected>Environment</option>
	<option value="Development">Development</option>
	<option value="SIT">SIT</option>
	<option value="UAT">UAT</option>
	<option value="PROD">PROD</option>
</select>



<select name="os" class="form-select" aria-label="Default select example">
	<option selected>Operating System</option>
	<option value="Windows">Windows</option>
	<option value="Mac">Mac</option>
	<option value="Android">Android</option>
	<option value="Linux">Linux</option>
</select>

<select name="dept" class="form-select" aria-label="Default select example">
	<option selected>Departments</option>
	<option value="HR">HR</option>
	<option value="IT">IT</option>
	<option value="Account">Account & Finance</option>
	<option value="R&D">R&D</option>
	<option value="Production">Production</option>
</select>

<select name="client" class="form-select" aria-label="Default select example">
	<option selected>Client</option>
	<option value="Credit Suisse">Credit Suisse</option>
	<option value="Bloomberg Media">Bloomberg Media</option>
	<option value="Dow Jones">Dow Jones</option>
	<option value="Siemens">Siemens</option>
	<option value="Deutsche Bank">Deutsche Bank</option>
</select>

<select name="status" class="form-select" aria-label="Default select example">
	<option selected>Status</option>
	<option value="Active">Active</option>
	<option value="Expired">Expired</option>
</select>
<tr>
<td colspan="2"><input type="submit" value="Submit" /></td>
</form>
</tr>

<c:url value="/logout" var="logoutUrl" />
<form id="logout" action="${logoutUrl}" method="post">
	<input type="hidden" name="${_csrf.parameterName}"
		value="${_csrf.token}" />

</form>

	

	<c:if test="${pageContext.request.userPrincipal.name != null}">
		<a href="javascript:document.getElementById('logout').submit()">Logout</a>
	</c:if>
	