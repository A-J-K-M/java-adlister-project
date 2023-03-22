<%--
  Created by IntelliJ IDEA.
  User: michael-angelcevallos
  Date: 3/22/23
  Time: 2:08 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Please Log In" />
    </jsp:include>

</head>
<body>
<jsp:include page="/WEB-INF/partials/style.jsp"/>
<jsp:include page="/WEB-INF/partials/userNavbar.jsp"/>

<h1> Profile Successfully Deleted</h1>

<h3>
    You Are Now Being Redirected To Sign In Page....
</h3>

<script>
    console.log("delete user jsp")
    setTimeout(
        function(){
            window.location = "/login"
        },
        3000);
</script>

</body>
</html>
