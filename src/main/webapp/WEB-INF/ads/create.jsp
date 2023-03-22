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
</style>
    <div class="container">
        <h1>Create a new Ad</h1>
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
                <input id="price" name="price" class="form-control" type="text" placeholder="##,###,###.##">
            </div>
            <div class="form-group">
                <label for="img_url">IMG URL</label>
                <textarea id="img_url" name="img_url" class="form-control" type="url"></textarea>
            </div>
            <button class="btn waves-effect waves-light" type="submit" name="action">Send
                <i class="material-icons">send</i>
            </button>
        </form>
    </div>
<%--cutom form--%>
<!--Contact form-->
<form class="col-12" id="contactForm">
    <div class="row">
        <div class="col s12 m6">
            <h3 class="white-text">Let's get in touch</h3>
            <p class="white-text"><i class="material-icons valign-wrapper">mail_outline</i>my-email@my-email.com</p>
            <p class="white-text">Questions? Comments? Collaboration?<br>
                Send me a message and I'll get back to you when I can. </p>
        </div>
        <div class="col s12 m6">
            <div class="row">
                <div class="col s6 m6">
                    <label class="white-text" name="questfirstName" for="questfirstName">First Name</label>
                    <input class="white-text" id="questfirstName" type="text">
                </div>
                <div class="col s6 m6">
                    <label class="white-text" name="questlastName" for="questlastName">Last Name</label>
                    <input class="white-text" id="questlastName" type="text">
                </div>
                <div class="col s6 m12">
                    <label class="white-text" for="questEmail">Email</label>
                    <input class="white-text" name="questEmail" id="questEmail" type="email">
                </div>
            </div>
            <div class="row">
                <div class="col s12 m12">
                    <label class="white-text" for="formMessage">Message</label>
                    <textarea id="formMessage" style="height: 100px;" class="col-6 white-text" rows="50" cols="50"></textarea>
                    <button class="btn waves-effect waves-light" type="submit" name="action">Send
                        <i class="material-icons">send</i>
                    </button>
                </div>
            </div>
        </div>
    </div>
</form>

<!--materialize js-->
<script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>

</body>
</html>
