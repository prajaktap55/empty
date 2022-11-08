<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<h2>The User has successfully Login</h2>
<a href="${pageContext.request.contextPath}/filter">Filter</a>
<!-- <h3>User details</h3>
<ul>
<li>Name :Dev</li>
<li>Id : 8745</li>
<li>Role : Developer</li>
</ul> -->
 
<c:url value="/logout" var="logoutUrl" />
<form id="logout" action="${logoutUrl}" method="post" >
  <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
</form>
<c:if test="${pageContext.request.userPrincipal.name != null}">
<a href="javascript:document.getElementById('logout').submit()">Logout</a>
</c:if> 