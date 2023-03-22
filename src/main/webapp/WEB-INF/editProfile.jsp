<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <jsp:include page="/WEB-INF/partials/head.jsp">
    <jsp:param name="title" value="Your Profile" />
  </jsp:include>

  <style>
    h1{
      text-align: center;
    }


  </style>
</head>
<body>
<jsp:include page="/WEB-INF/partials/style.jsp"/>
<jsp:include page="/WEB-INF/partials/userNavbar.jsp"/>

<div class="container">
  <h1>Edit your profile below ${sessionScope.user.username}!</h1>
</div>

<br>

<%--UPDATE USERS EMAIL & PASSWORD--%>
<form>
  <h2>Update Email and Password</h2>
  <c:if test="${not empty param.email and not empty param.password}">
    <c:set var="email" value="${param.email}" />
    <c:set var="password" value="${param.password}" />
    <p>Email and password updated successfully!  <---------------</p>
  </c:if>


  <form action="updateUser.jsp" method="POST">
    <label for="email">New Email:</label>
    <input type="email" name="email" id="email" value="${email}" required><br><br>
    <label for="password">New Password:</label>
    <input type="password" name="password" id="password" value="${password}" required><br><br>
    <input type="submit" class="btn btn-primary" value="Update">
  </form>

  <form action="deleteUser.jsp" method="POST">
    <button type="submit" class="btn btn-danger">Delete Profile</button>
  </form>


</form>

</body>
</html>
