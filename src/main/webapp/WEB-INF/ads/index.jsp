<%@ page import="com.codeup.adlister.models.Ad" %>
<%@ page import="com.codeup.adlister.dao.Ads" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%!
        private Iterable<? extends Ad> ads;
    %>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Viewing All The Ads" />
    </jsp:include>


</head>
<style>
    /*.ad {*/
    /*    border: 1px solid #ccc;*/
    /*    padding: 10px;*/
    /*    margin: 10px;*/
    /*    background-color: #f7f7f7;*/
    /*}*/



</style>
</head>



<body>
<jsp:include page="/WEB-INF/partials/style.jsp"/>
<nav class="navbar navbar-default">
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <a class="navbar-brand" href="/ads">Adlister</a>
        </div>
        <ul class="nav navbar-nav navbar-right">
            <li><a href="/logout">Logout</a></li>
        </ul>
    </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->




</nav><div class="d-flex row col-12">
    <h1 class="col-12 text-center">Adlister</h1>

<%--
Modify ad index view to turn each ad into a div with at least the name of the ad and a clickable link that redirects the user to the details view.--%>
<%--    <% for (Ad ad : ads) { %>--%>
<%--    <div class = "ad">--%>
<%--        <h2><a  href="<%= request.getContextPath()%>/ads/create?id=<%= ad.getId() %>"><%= ad.getUserId() %></a></h2>--%>
<%--    </div>--%>
<%--    <% }%>--%>



    <c:forEach var="ad" items="${ads}">
        <div class="ms-2 col-6">
            <h2>${ad.title}</h2>
            <img src="${ad.img_url}">
            <p>${ad.description}</p>

            <h2><a href="/ads/delete?id=<%= Ad.getId() %>">
                <%= Ad.getUserId() %></a></h2>
                    <button type="button" class="btn btn-danger" data-toggle="modal" data-target="#deleteModal<%= Ad.getId() %>">Delete</button>
            <hr>
    </c:forEach>
</div>



<%--<% for (Ad ad : ads) { %>--%>
<%--<div class="ad">--%>
<%--    <h2><a href="<%= request.getContextPath() %>/ads/create?id=<%= ad.getId() %>"><%= ad.getUserId() %></a></h2>--%>
<%--    <button type="button" class="btn btn-danger" data-toggle="modal" data-target="#deleteModal<%= ad.getId() %>">Delete</button>--%>
<%--    <!-- Delete confirmation modal -->--%>
<%--    <div class="modal fade" id="deleteModal<%= ad.getId() %>" tabindex="-1" role="dialog" aria-labelledby="deleteModalLabel<%= ad.getId() %>" aria-hidden="true">--%>
<%--        <div class="modal-dialog" role="document">--%>
<%--            <div class="modal-content">--%>
<%--                <div class="modal-header">--%>
<%--                    <h5 class="modal-title" id="deleteModalLabel<%= ad.getId() %>">Delete <%= ad.getUserId() %></h5>--%>
<%--                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">--%>
<%--                        <span aria-hidden="true">&times;</span>--%>
<%--                    </button>--%>
<%--                </div>--%>
<%--                <div class="modal-body">--%>
<%--                    Are you sure you want to delete <%= ad.getUserId() %>?--%>
<%--                </div>--%>
<%--                <div class="modal-footer">--%>
<%--                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>--%>
<%--                    <form action="<%= request.getContextPath() %>/ad/delete ?id=<%= ad.getId() %>" method="post">--%>
<%--                        <button type="submit" class="btn btn-danger">Delete</button>--%>
<%--                    </form>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--</div>--%>
<%--<% } %>--%>


<%--Create ad delete feature (may be broken up into multiple cards .) This feature will require full stack modifications to the app.--%>

<div class="row">
    <a class="col-12 text-center" href="/ads/create"><strong>Make a new ad</strong></a>
</div>



</body>
</html>
