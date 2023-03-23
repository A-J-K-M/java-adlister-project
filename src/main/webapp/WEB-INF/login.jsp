<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Please Log In" />
    </jsp:include>
</head>
<body>
<style>
    html {
    }
    @keyframes gradientAnime {
        0% {
            background-position: 0% 50%;
        }
        50% {
            background-position: 100% 50%;
        }
        100% {
            background-position: 0% 50%;
        }
    }
    .container {
        border-radius: 25px;
        background: black;
        top: 104px;
        left: 60px;
        position: absolute;
    }

    body {
        background: linear-gradient(-45deg, #ee7752, #e73c7e, #23a6d5, #23d5ab);
        background-size: 400% 400%;
        font-family: Damascus sans-serif;
        color:white;
        text-shadow: 1px 1px 3px black;
        animation: gradientAnime 15s linear infinite;    }
    h1 h2{
        text-align: center;
    }
    .navbar {
        background:black;
    }
    .navbar a {
        text-shadow: none;
        color: white !important;
        text-decoration: none;
    }
    .btn {
        text-shadow: 1px 1px 0 black;
    }
</style>
<nav class="navbar navbar-default">
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <a class="navbar-brand" href="/ads">Menagerie</a>
        </div>
        <ul class="nav navbar-nav navbar-right">
            <li><a href="/login">Login</a></li>
        </ul>
    </div><!-- /.navbar-collapse -->
</nav>
    <div class="container">
        <h1>Please Login</h1>
        <form action="/login" method="POST">
            <div class="form-group">
                <label for="username">Username</label>
                <input id="username" name="username" class="form-control" type="text">
            </div>
            <div class="form-group">
                <label for="password">Password</label>
                <input id="password" name="password" class="form-control" type="password">
            </div>
            <input type="submit" class="btn btn-primary btn-block" value="Login">
        </form>

        <h4>New user?<a style="text-decoration: none;" href="/register"> Sign up!</a></h4>
    </div>
</body>
</html>
