<%@include file="/WEB-INF/pages/includedTags.jsp" %>

<a href="menu1">Menu 1</a>
<br/>
<sec:authorize access="hasRole('ROLE_ADMIN')">
<a href="menu2">Menu 2</a>
<br/>
</sec:authorize>
<br/>
<c:url var="logoutUrl" value="/j_spring_security_logout" />
<form action="${logoutUrl}" id="logout" method="post">
    <input type="hidden" name="${_csrf.parameterName}"
           value="${_csrf.token}" />
</form>
<a href="#" onclick="document.getElementById('logout').submit();">Logout</a>