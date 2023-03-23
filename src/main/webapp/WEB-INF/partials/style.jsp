<style>
    html {
        background-image: linear-gradient(90deg,midnightblue,mediumvioletred);
    }

    body {
        font-family: Damascus sans-serif;
        color:white;
        text-shadow:1px 2px 0 black;
    }

    h1 h2{
      text-align: center;
    }

    a {
        padding: 0 !important;
    }
    .navbar {
      background:black;
    }

    .navbar a {
      text-shadow: none;
      color: white !important;
    }

    .card {
      width: 30rem;
    }

    .Male {
      color:blue;
    }

    .Female {
      color:deeppink;
    }

    .NA {
      color: #8889;
    }

    .idk {
      color: forestgreen;
    }

    /*ad cards*/
    @import url("https://fonts.googleapis.com/css2?family=Roboto:wght@100;300;400;500;700&display=swap");

    * {
        box-sizing: border-box;
        padding: 0;
        margin: 0;
    }

    body {
        background: #457fb4;
        font-family: "Roboto", sans-serif;
        display: flex;
        height: 100vh;
    }

    .hero-container {
        margin: auto;
        display: flex;
    }

    .main-container {
        width: 270px;
        height: 540px;
        position: relative;
        margin: 0 20px;
    }

    .poster-container {
        width: 230px;
        position: absolute;
        top: 0;
        left: 20px;
        z-index: 9999;
    }

    .poster {
        height: 220px;
        width: 100%;
        box-shadow: 1px 2px 2px 1px rgba(0, 0, 0, 0.6);
    }


    .ticket-container {
        background-image: linear-gradient(90deg,midnightblue,mediumvioletred);
        width: 270px;
        padding-top: 230px;
        display: flex;
        flex-direction: column;
        align-items: center;
        justify-content: end;
        border-radius: 5px;
        position: absolute;
        top: 20px;
        box-shadow: 0 5px 2px 0 rgba(0, 0, 0, 0.6);
        opacity: 0;
    }

    .main-container:hover .ticket-container {
        opacity: 1;
        animation: bounceIn 0.6s linear;
    }

    @keyframes bounceIn {
        0%,
        20%,
        40%,
        60%,
        80%,
        to {
            -webkit-animation-timing-function: cubic-bezier(0.215, 0.61, 0.355, 1);
            animation-timing-function: cubic-bezier(0.215, 0.61, 0.355, 1);
        }
        0% {
            opacity: 0;
            -webkit-transform: scale3d(0.3, 0.3, 0.3);
            transform: scale3d(0.3, 0.3, 0.3);
        }
        20% {
            -webkit-transform: scale3d(1.03, 1.03, 1.03);
            transform: scale3d(1.03, 1.03, 1.03);
        }
        40% {
            -webkit-transform: scale3d(0.9, 0.9, 0.9);
            transform: scale3d(0.9, 0.9, 0.9);
        }
        60% {
            opacity: 1;
            -webkit-transform: scale3d(1.01, 1.01, 1.01);
            transform: scale3d(1.01, 1.01, 1.01);
        }
        80% {
            -webkit-transform: scale3d(0.97, 0.97, 0.97);
            transform: scale3d(0.97, 0.97, 0.97);
        }
        to {
            opacity: 1;
            -webkit-transform: scaleX(1);
            transform: scaleX(1);
        }
    }

    /* @keyframes bounce {
      50% {
        opacity: 1;
        transform: scale(1.1);
      }

      100% {
        opacity: 1;
        transform: scale(1);
      }
    } */


    .ticket__content {
        width: 100%;
        padding: 0;
        position: relative;
        bottom: 0;
        text-align: center;
        background-image: linear-gradient(90deg,midnightblue,mediumvioletred);

    }

    .ticket__movie-title {
        text-transform: uppercase;
        color:lightskyblue;
        margin-bottom: 5px;
    }

    .ticket__movie-slogan {
        color: #94f4ee;
        font-size: 1rem;
        margin-bottom: 20px;
        list-style: none;
    }

    .ticket__current-price {
        color: #fc3c3c;
        font-size: 1.4rem;
        font-weight: bold;
    }

    .ticket__buy-btn {
        cursor: pointer;
        width: 100%;
        background: #864e9f;
        color: white;
        padding: 15px 0;
        font-size: 1rem;
        font-weight: bold;
        text-transform: uppercase;
        border: 0;
        opacity: 90%;
    }
    /*profile*/
    @import url("https://fonts.googleapis.com/css2?family=Oswald:wght@200;600&display=swap");
    body {
        font-family: "Oswald", sans-serif;
        background-color: #212121;
    }

    body section {
        width: 100%;
        max-width: 19.5%;
        margin: 0;
        display: flex;
        justify-content: center;
        align-items: flex-start;
        align-content: center;
    }

    body section .row {
        align-items: center;
        height: 28rem;
    }

    .card {
        position: relative;
        height: 400px;
        width: 100%;
        /*margin: 10px 0;*/
        transition: ease all 1.3s;
        perspective: 1200px;
    }
    .card:hover .cover {
        transform: rotateX(0deg) rotateY(-180deg);
    }
    .card:hover .cover:before {
        transform: translateZ(30px);
    }
    .card:hover .cover:after {
        background-color: black;
    }
    .card:hover .cover h1 {
        transform: translateZ(100px);
    }
    .card:hover .cover a {
        transform: translateZ(-60px) rotatey(-180deg);
    }
    .card .cover {
        position: absolute;
        height: 100%;
        width: 100%;
        transform-style: preserve-3d;
        transition: ease all 2.3s;
        background-size: cover;
        background-position: center center;
        background-repeat: no-repeat;
    }
    .card .cover:before {
        content: "";
        position: absolute;
        border: 5px solid rgba(255, 255, 255, 0.5);
        box-shadow: 0 0 12px rgba(0, 0, 0, 0.3);
        top: 20px;
        left: 20px;
        right: 20px;
        bottom: 20px;
        transition: ease all 2.3s;
        transform-style: preserve-3d;
        transform: translateZ(0px);
    }
    .card .cover:after {
        content: "";
        position: absolute;
        top: 0px;
        left: 0px;
        right: 0px;
        bottom: 0px;
        z-index: 1;
        transition: ease all 1.3s;
        background: rgba(0, 0, 0, 0.4);
    }

    .card .cover.item-a {

    }

    .card .cover h1 {
        font-weight: 600;
        position: absolute;
        bottom: 55px;
        left: 50px;
        color: white;
        transform-style: preserve-3d;
        transition: ease all 2.3s;
        z-index: 3;
        font-size: 3em;
        transform: translateZ(0px);
    }
    .card .card-back {
        position: absolute;
        top: 56px;
        height: 36%;
        width: 90%;
        background: #0b0f08;
        transform-style: preserve-3d;
        transition: ease all 1.5s;
        transform: translateZ(-1px);
        display: flex;
        align-items: center;
        justify-content: center;
        align-content: center;
        flex-direction: column;
    }

    .card .card-back a {
        transform-style: preserve-3d;
        transition: ease transform 2.3s, ease background 0.5s;
        transform: translateZ(-1px) rotatey(-180deg);
        background: transparent;
        border: 1px solid white;
        font-weight: 200;
        font-size: 1.3em;
        color: white;
        padding: 14px 32px;
        outline: none;
        text-decoration: none;
    }
    .card .card-back a:hover {
        background-color: white;
        color: #0b0f08;
    }





</style>