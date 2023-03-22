<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Create a new Ad" />
    </jsp:include>
    <!--	Carme font-->
    <link href='https://fonts.googleapis.com/css?family=Carme' rel='stylesheet'>
    <!--	Materialize Icons-->
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <!-- Compiled and minified CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
</head>
<body>
<jsp:include page="/WEB-INF/partials/adsCreateNav.jsp"/>
<jsp:include page="/WEB-INF/partials/style.jsp"/>
<style>
    .input-field li {
        background: black !important;
        color:white !important;
    }
    span{
        color:white !important;
        background: black !important;
    }
    html{
        line-height: 1.5em;
        scroll-behavior: smooth;
    }
    label {
        color:white!important;
        font-size: 1.5em!important;
    }
    input {
        color:white!important;
    }
    ::placeholder {
        color: red!important;
        opacity: .8!important;
    }
</style>
    <div class="container">
        <h1 class="valign-wrapper center-align">Create a new Ad</h1>
        <form action="/ads/create" method="post">
            <div class="form-group white-text col-12">
                <label for="title">Title</label>
                <input id="title" name="title" class="form-control" type="text">
            </div>
            <div class="form-group">
                <label for="description">Description</label>
                <textarea id="description" name="description" class="form-control" type="text"></textarea>
            </div>
            <div class="form-group">
                <label for="gender">Gender</label>
                <select id="gender" name="gender" class="form-control" type="text">
                    <option value="female">F</option>
                    <option value="male">M</option>
                    <option value="unknown">N/A</option>
                </select>
            </div>
            <div class="form-group">
                <label for="age">Age</label>
                <input id="age" name="age" class="form-control" type="text">
            </div>
            <div class="form-group">
                <label for="price">Price</label>
                <input id="price" name="price" class="form-control white-text" type="text" placeholder="$##,###,###.##">
            </div>
            <div class="form-group">
                <label for="img_url">IMG URL</label>
                <textarea id="img_url" name="img_url" class="form-control" type="url"></textarea>
            </div>
            <button class="btn waves-effect waves-light right align-right" type="submit" name="action">Submit
                <i class="material-icons">send</i>
            </button>
        </form>
    </div>


<!--materialize js-->
<script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>

</body>
</html>
