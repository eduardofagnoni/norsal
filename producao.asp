<!--#include file="functions/idiomas.asp"-->
<!--#include file="functions/__pega_nome_da_pagina.asp"-->
<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    
    <link href="https://fonts.googleapis.com/css?family=Montserrat:100,300,500|Open+Sans:300,400,600,700" rel="stylesheet">

    <link rel="stylesheet" type="text/css" href="plugins/font-awesome/css/font-awesome.min.css">
    
    
    <link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="stylesheet/styleGuide.css">

    <title></title>
</head>
<body>

    <main>
        <!--#include file="includes/header.asp"--> 

        <section id="topos" class="producao">
            <header class="inline">
                <h1><% response.Write traduzir("txtTopoProducaoTit") %></h1>
                <p><% response.Write traduzir("txtTopoProducaoTexto") %></p>
            </header>
        </section>

        <section style="padding:0;margin:0; background: rgb(233,233,233); background: -moz-linear-gradient(top,  rgba(233,233,233,1) 73%, rgba(209,209,209,1) 100%); background: -webkit-linear-gradient(top,  rgba(233,233,233,1) 73%,rgba(209,209,209,1) 100%); background: linear-gradient(to bottom,  rgba(233,233,233,1) 73%,rgba(209,209,209,1) 100%); filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#e9e9e9', endColorstr='#d1d1d1',GradientType=0 ); ">
            <div class="container">
                <div class="features" style="position:relative; margin:-60px 0 -3px 0; z-index:2;">
                    <article>
                        <header><% response.Write traduzir("txtFeaturesProducaoTit1") %></header>
                        <p><% response.Write traduzir("txtFeaturesProducaoRes1") %></p>
                    </article>
                    <article>
                        <header><% response.Write traduzir("txtFeaturesProducaoTit2") %></header>
                        <p><% response.Write traduzir("txtFeaturesProducaoRes2") %></p>
                    </article>
                    <article>
                        <header><% response.Write traduzir("txtFeaturesProducaoTit3") %></header>
                        <p><% response.Write traduzir("txtFeaturesProducaoRes3") %></p>
                    </article>
                </div>        
            </div>
        </section>

        <section class="container textos-laterais" style="padding-top:100px;padding-bottom:80px;">        
            <header class="inline">
                <h2><% response.Write traduzir("txtSection3ProducaoTit") %></h2>
                <div class="lats">
                    <p><% response.Write traduzir("txtSection3ProducaoTexto") %></p>
                </div>
            </header>       

            <div style="height:100px;"></div> 
        </section>

        <section style="padding:0;margin:0; background: rgb(233,233,233); background: -moz-linear-gradient(top,  rgba(233,233,233,1) 73%, rgba(209,209,209,1) 100%); background: -webkit-linear-gradient(top,  rgba(233,233,233,1) 73%,rgba(209,209,209,1) 100%); background: linear-gradient(to bottom,  rgba(233,233,233,1) 73%,rgba(209,209,209,1) 100%); filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#e9e9e9', endColorstr='#d1d1d1',GradientType=0 ); ">
            <div class="container">
                <div class="features" style="position:relative; margin:-60px 0 40px 0; z-index:2;">  
                    <figure>
                        <img src="images/a-historia-do-sal.jpg" alt="" title="" >
                        <p><% response.Write traduzir("txtSection4ProducaoTit1") %></p>
                        <figcaption><% response.Write traduzir("txtSection4ProducaoTexto1") %></figcaption>
                        <button class="bt bt-saibaMais"><i class="fa fa-chevron-right" aria-hidden="true"></i><% response.Write traduzir("txtBotaoSaibaMais") %></button>
                    </figure>
                    <figure>
                        <img src="images/a-importancia-do-sal.jpg" alt="" title="" >
                        <p><% response.Write traduzir("txtSection4ProducaoTit2") %></p>
                        <figcaption><% response.Write traduzir("txtSection4ProducaoTexto2") %></figcaption>
                        <button class="bt bt-saibaMais"><i class="fa fa-chevron-right" aria-hidden="true"></i><% response.Write traduzir("txtBotaoSaibaMais") %></button>
                    </figure>
                    <figure>
                        <img src="images/as-vantagens-do-consumo-consciente.jpg" alt="" title="" >
                        <p><% response.Write traduzir("txtSection4ProducaoTit3") %></p>
                        <figcaption><% response.Write traduzir("txtSection4ProducaoTexto3") %></figcaption>
                        <button class="bt bt-saibaMais"><i class="fa fa-chevron-right" aria-hidden="true"></i><% response.Write traduzir("txtBotaoSaibaMais") %></button>
                    </figure>
                </div>        
            </div>
        </section>

        
        <!--#include file="includes/fale-com-a-gente.asp"-->
        <!--#include file="includes/footer.asp"-->
        <!--#include file="includes/newsletter.asp"-->

    </main>



<script
  src="https://code.jquery.com/jquery-3.4.1.min.js"
  integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo="
  crossorigin="anonymous"></script>

<script type="text/javascript" src="plugins/responsiveCarousel/js/responsiveCarousel.min.js"></script>

<script>

    (function() {

    "use strict";

    var toggles = document.querySelectorAll(".c-hamburger");

    for (var i = toggles.length - 1; i >= 0; i--) {
    var toggle = toggles[i];
    toggleHandler(toggle);
    };

    function toggleHandler(toggle) {
    toggle.addEventListener( "click", function(e) {
        e.preventDefault();
        (this.classList.contains("is-active") === true) ? this.classList.remove("is-active") : this.classList.add("is-active");
        (this.classList.contains("is-active") === true) ? abreMenu() : fechaMenu();        
    });
    }

    })();

    /*******************************************************************
    Funções abre e fecha telas de Menu
    *******************************************************************/
    function abreMenu() {        
        $("nav").animate({top:"0", opacity:"show" }, 400);
    }

    function fechaMenu() {        
        $("nav").animate({top:"-700", opacity:"hide" }, 400);
    }

    $(function(){
      $('.crsl-items').carousel({
        autoRotate: 4000,
        visible: 2,
        itemMinWidth: 180,
        itemEqualHeight: 370,
        itemMargin: 0,
      });
      
      $("a[href=#]").on('click', function(e) {
        e.preventDefault();
      });
    });

    


</script>
</body>
</html>