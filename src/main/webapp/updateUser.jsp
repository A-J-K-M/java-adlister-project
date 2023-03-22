<%--
  Created by IntelliJ IDEA.
  User: michael-angelcevallos
  Date: 3/22/23
  Time: 2:05 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Update Successful</title>

    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Please Log In" />
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/style.jsp"/>
<jsp:include page="/WEB-INF/partials/userNavbar.jsp"/>


<script>
    console.log("update user jsp")
    setTimeout(
        function(){
            window.location = "/profile"
        },
        3000);
</script>


</body>
</html>
