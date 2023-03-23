<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

</head>
<body>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <title>The Orb</title>
    <!-- Materialize CSS -->
    <link rel="stylesheet" href="./css/nightsky.css">
</head>
<body>

<!--    <div id="fireflies-container" style="position:absolute;top:0;left:0;width:100vw;height: 500px; background: transparent; z-index:100">-->
<div id="fireflies-container" style="width:100%;height: 100%; background: transparent; z-index:100"> <!--Page Wrapper-->

        <img id="moon" src="./img/moon.png">
        <div class="clouds"></div>
        <a href="#"><span style="z-index:6;" id="hero-text">Mercator Magicis</span></a>
    <div class="background-container">
        <div class="starsAll"></div>
        <div class="twinkling"></div>
    </div> <!--Night Sky -->
</div>


<div class="container"> <!--Page Wrapper-->
    <div class="row"> <!--Crystal Ball-->
        <img id="floatyHands" src="./img/floaty_hands.png">
        <div id="purpleOrb"></div>
    </div>
    <a href="#">Clickable</a>
</div>

<div class="container">
    <div class="row">
        <div style="color:white;">
            <h1>Walbalie Squitle</h1>
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolorem doloremque eius et expedita hic illum neque
                nobis quos voluptas! Consequuntur est illum nesciunt officia provident recusandae reiciendis, repellat saepe
                sint!</p>
        </div>
    </div>
</div>






<!--Scripts-->
<script src="./js/fireflies.js"></script>
<script>
    (function() {
        fireFlies({
            "number_flies": 100,
            "color": "#fff",
            "elem": "#fireflies-container"
        });
    })();
</script>


</body>
</html>
