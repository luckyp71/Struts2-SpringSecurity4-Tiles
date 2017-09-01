<%@include file="/WEB-INF/pages/includedTags.jsp" %>
<html>
    <head>
        <title>
            Login
        </title>
    </head>
    <body>
        Login
        <br/> 
        <c:url var="loginUrl" value="/login"/>
        <form action="${loginUrl}" method="post">
            <input type="text" name="username" placeholder="Username"/><br/>
            <input type="password" name="password"  placeholder="Password"/><br/>
            <input type="hidden" name="${_csrf.parameterName}"  value="${_csrf.token}" />
            <button type="submit">Process</button>
        </form>
    </body>
</html>