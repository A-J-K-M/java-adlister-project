<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <title>Welcome~</title>
</head>
<body>
<style>

    html,body {
        height: 100vh;
        background: radial-gradient(ellipse at bottom, #1B2735 0%, #090A0F 100%);
        cursor:url(../icons/cursor_gauntlet_blue.png), auto;
        overflow-x: hidden;
    }
    :root {
        --clr-one: rgb(255, 20, 147);
        --clr-two: rgb(127, 255, 0);
        --clr-three: rgb(138, 43, 226);
        --clr-bg: #1d1e22;
    }
    #magicHolder{
        position: relative;
        top: -14px;
        left: 50px;
        z-index: 999;
    }

    #hero-sub {
        animation: heroText 6s linear infinite;
        color: white;
        font-size: 2em;
        font-variant-east-asian: full-width;
        font-family: "Balsamiq Sans", Charm, sans-serif;
        padding: .3em;
        position: relative;
        margin: 0 auto;
        text-shadow: 0 0 80px rgba(255,255,255,.5);
        top: 233px;
        left: -82px;
        z-index: 50;
        width: 529px;
        opacity: 0;
        transition: opacity 4s linear;
    }
    #hero-text {
        animation: heroText 10s linear infinite;
        border: var(--clr-two) 0.125em solid;
        box-shadow: inset 0 0 0.5em 0 var(--clr-two), 0 0 0.5em 0 var(--clr-two);
        color: white;
        font-family: "Balsamiq Sans", Charm, serif;
        font-size:3em;
        padding: .3em;
        position: absolute;
        text-shadow: 0 0 0.125em hsl(0 0% 100% / 0.3), 0 0 0.45em deeppink;
        top: 124px;
        left: -26px;
        width:320px;
        z-index: 50;
        opacity: 0;
        transition: opacity 4s linear;
    }
    #hero-text:hover {
        border: var(--clr-one) 0.15em solid;
        color:orangered;
        box-shadow: inset 0 0 0.5em 0 var(--clr-one), 0 0 0.5em .2em var(--clr-one);
        text-shadow: 0 0 0.125em hsl(0 0% 100% / 0.3), 0 0 0.45em var(--clr-bg);
        transition:text-shadow 1s linear, border 1s linear,box-shadow 1s linear, color 1s linear;
    }
    @keyframes heroText {
        0% {
            opacity: 1;
        }
        4% {
            opacity: .3;
        }
        5% {
            opacity: .6;
            text-shadow:
                    5px 5px 3px rgba(200,244,181,0.8),
                    10px 10px 6px rgba(208,234,186,0.65),
                    15px 15px 9px rgba(216,224,191,0.5),
                    20px 20px 12px rgba(210,210,210,0.35);
        }
        6% {
            opacity: .3;

        }
        7% {
            opacity: .7;
        }
        8% {
            opacity: .3;
            text-shadow:
                    5px 5px 3px rgba(200,244,181,0.8),
                    10px 10px 6px rgba(208,234,186,0.65),
                    15px 15px 9px rgba(216,224,191,0.5),
                    20px 20px 12px rgba(210,210,210,0.35);
        }
        9% {
            opacity: .7;
        }
        10% {
            opacity: .6;
        }
        100% {
            opacity: 1;
        }
    }


    @keyframes move-background {
        from {
            -webkit-transform: translate3d(0px, 0px, 0px);
        }
        to {
            -webkit-transform: translate3d(1000px, 0px, 0px);
        }
    }

    .container {
        position: relative;
        width: 330px;
        height: 480px;
        margin: auto;
        left: 0;
        right: 0;
        top: 0;
        bottom: 0;
    }

    .starsAll {
        background: black url(../img/stars.png) repeat;
        position: absolute;
        top: 0;
        bottom: 0;
        left: 0;
        right: 0;
        display: block;
        z-index: 4;
    }

    .twinkling{
        width:10000px;
        height: 100%;
        background: transparent url(../img/twinkling.png) repeat;
        background-size: 1000px 1000px;
        position: absolute;
        right: 0;
        top: 0;
        bottom: 0;
        z-index: 4;
        animation:move-background 70s linear infinite;

    }
    .clouds{
        width:800vh;
        height: 100vh;
        background: transparent url(../img/clouds_repeat.png);
        position: absolute;
        right: 0;
        top: 0;
        bottom: 0;
        z-index: 7;
        animation:move-background 150s linear infinite;
    }
    #moon{
        background:transparent;
        height: 70vh;
        width:70vh;
        position: absolute;
        z-index: 6;
        right: 20px;
        animation: updown 16s linear infinite;
    }
    @keyframes updown {
        0% {
            transform: translateY(0%);
        }
        50% {
            transform: translateY(4%);
        }
        100% {
            transform: translateY(0%);
        }
    }
    .background-container{
        top: 0;
        left:0;
        bottom: 0;
        right: 0;
    }
    a,button {
        cursor:url(../icons/cursor_gauntlet.png), auto;
    }


    #floatyHands {
        top:-860px;
        filter:contrast(100%) brightness(90%) hue-rotate(90deg) blur(2px);
        scale: 0.32;
        background:transparent;
        z-index:98;
        animation: floatyHands linear 5s infinite;
        opacity: 0;
        transition: opacity 4s linear;
    }

    #purpleOrb {
        position:relative;
        top:-830px;
        z-index: 99;
        width: 300px;
        height: 300px;
        border-radius: 50%;
        opacity: 0;
        transition: opacity 4s linear;
        animation: whipple linear 22s infinite
    }
    .orbSection {
        background: radial-gradient(ellipse at bottom, #1B2735 0%, #090A0F 100%);
    }
    .row {
        flex-basis: content;
        justify-content: center;
        align-content: center;
    }
    @keyframes whipple {
        0% {
            transform: translateY(0%);
            box-shadow:
                    inset 0 0 50px #fff,      /* inner white */
                    inset 20px 0 80px #f0f,   /* inner left magenta short */
                    inset -20px 0 80px #0ff,  /* inner right cyan short */
                    inset 20px 0 300px #f0f,  /* inner left magenta broad */
                    inset -20px 0 300px #0ff, /* inner right cyan broad */
                    0 0 50px #fff,            /* outer white */
                    -10px 0 80px #f0f,        /* outer left magenta */
                    10px 0 80px #0ff;         /* outer right cyan */
        }
        50% {
            transform: translateY(2%);
            box-shadow:
                    inset 0 0 20px #fff,
                    inset 20px 0 80px #f0f,
                    inset 20px 0 80px #0ff,
                    inset 20px 0 300px #f0f,
                    inset -50px 0 300px #0ff,
                    0 0 10px #fff,
                    -10px 0 80px #f0f,
                    10px 0 80px #0ff;
        }
        100% {
            transform: translateY(0%);
            box-shadow:
                    inset 0 0 50px #fff,
                    inset 20px 0 80px #f0f,
                    inset -20px 0 80px #0ff,
                    inset 20px 0 300px #f0f,
                    inset -20px 0 300px #0ff,
                    0 0 50px #fff,
                    -10px 0 80px #f0f,
                    10px 0 80px #0ff;
        }
    }

    @keyframes floatyHands {
        0% {
            transform:translate(-130%,-30%);
            filter: contrast(100%) brightness(80%) hue-rotate(90deg) blur(2px)
            drop-shadow(0.55rem 0.95rem 0.8rem rgba(255,140,140, 0.9));
        }
        50%{
            transform:translate(-130%,-34%);
            filter: contrast(100%) brightness(50%) hue-rotate(140deg) blur(4px)
            drop-shadow(0.55rem 0.35rem 0.4rem rgba(255,255,255, 0.3));
        }
        100%{
            transform:translate(-130%,-30%);
            filter: contrast(100%) brightness(80%) hue-rotate(90deg) blur(2px)
            drop-shadow(0.55rem 0.95rem 0.8rem rgba(255,140,140, 0.9));
        }
    }


</style>
<img id="moon" src="./img/moon.png">
     <!--Page Wrapper-->
<div class="clouds"></div>
<div class="background-container">
        <div class="starsAll"></div>
        <div class="twinkling"></div>
<div id="fireflies-container" style="top:-450px;width:100vw;height: 100vh; background: transparent;position:fixed; z-index:100"></div>

    </div> <!--Night Sky -->

<div id="magicHolder" class="container"> <!--og stay together fr fr-->
    <img id="floatyHands" src="./img/floaty_hands.png"> <!--hans-->
    <div id="purpleOrb"> <!--Crystal Ball-->
        <a href="/login"><span style="z-index:6;" id="hero-text">Mercator Magicis</span></a>
        <h3 id="hero-sub">Fantastic Beasts and Where to Buy Them</h3>
    </div>
</div>







<!--Scripts-->
<script src="./js/jquery.js"></script>
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
<script>
    //this is was not the best way to do this
    $(document).ready(function() {
        setTimeout(function () {
            $('#floatyHands').css('opacity', '1')
        }, 2000);

        setTimeout(function () {
            $('#purpleOrb').css('opacity', '1')
        }, 4000);

        setTimeout(function () {
            $('#hero-text').css('opacity', '1')
        }, 7000);

        setTimeout(function () {
            $('#hero-sub').css('opacity', '1')
        }, 15000);
    })
</script>

</body>
</html>
