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

        <section id="topos" class="home">
            <header>
                <h1><% response.Write traduzir("txtBannerHome") %></h1>
                <p><% response.Write traduzir("txtBannerHomeLinha2") %></p>
                <button class="bt bt-branco" style="margin-top:15px" onclick="location.href='a-norsal.asp'"><% response.Write traduzir("txtBotaoBannerHome") %></button>
            </header>
        </section>

        <section style="padding-top:40px;padding-bottom:40px;">
            <div class="container">
                <ul class="nossas-marcas">
                    <li onclick="location.href='produtos.asp?idSegmento=1&idMarca=1'"><img src="images/marcas/norsal.png" alt="Norsal" title=""></li>
                    <li onclick="location.href='produtos.asp?idSegmento=1&idMarca=2'"><img src="images/marcas/sal-lebre.png" alt="Sal Lebre" title=""></li>
                    <li onclick="location.href='produtos.asp?idSegmento=1&idMarca=3'"><img src="images/marcas/miramar.png" alt="Miramar" title=""></li>
                    <li onclick="location.href='produtos.asp?idSegmento=1&idMarca=4'"><img src="images/marcas/almirante.png" alt="Almirante" title=""></li>
                    <li onclick="location.href='produtos.asp?idSegmento=1&idMarca=5'"><img src="images/marcas/sal-piramide.png" alt="Sal Pirâmide" title=""></li>
                </ul>            
            </div>
        </section>

        <section class="container textos-laterais" style="padding-bottom: 40px;">        
            <header class="inline">
                <h2><% response.Write traduzir("txtDestaqueSection1Home") %></h2>
                <div class="lats">
                    <p><% response.Write traduzir("txtApoioSection1Home") %></p><br>
                    <button class="bt bt-azul-cinza" onclick="location.href='marcas.asp'"><i class="fa fa-chevron-right" aria-hidden="true"></i> <% response.Write traduzir("txtBotaoSection1Home") %></button>
                </div>
            </header>        
        </section>

        <section style="background:#e9e9e9; padding-bottom:56px;position:relative;margin-top:60px;">
            <div class="container">
                <div class="features" style="margin-top:-40px;">  
                    <figure class="scrollme animateme"
                        data-when="span"
                        data-from="0.3"
                        data-to="0"
                        data-easing="easeinout"
                        data-opacity="0"
                        data-translatey="60"
                        data-rotatey="180">
                        <img src="images/cuidado-e-dedicacao-na-producao.jpg" alt="" title="" >
                        <p><% response.Write traduzir("txtFeaturesHomeTit1") %></p>
                        <figcaption><% response.Write traduzir("txtFeaturesHomeRes1") %></figcaption>
                        <br>
                        <button class="bt bt-saibaMais" onclick="location.href='producao.asp'"><i class="fa fa-chevron-right" aria-hidden="true"></i> <% response.Write traduzir("txtBotaoSaibaMaisSobreProducao") %></button>
                    </figure>
                    <figure class="scrollme animateme"
                        data-when="span"
                        data-from="0.5"
                        data-to="0"
                        data-easing="easeinout"
                        data-opacity="0"
                        data-translatey="60"
                        data-rotatey="180">
                        <img src="images/qualidade-e-a-nossa-prioridade.jpg" alt="" title="" >
                        <p><% response.Write traduzir("txtFeaturesHomeTit2") %></p>
                        <figcaption><% response.Write traduzir("txtFeaturesHomeRes2") %></figcaption>
                        <br>
                        <button class="bt bt-saibaMais" onclick="location.href='a-norsal.asp#certificacao'"><i class="fa fa-chevron-right" aria-hidden="true"></i> <% response.Write traduzir("txtBotaoConfiraNossaCertificacao") %></button>
                    </figure>
                    <figure class="scrollme animateme"
                        data-when="span"
                        data-from="0.7"
                        data-to="0"
                        data-easing="easeinout"
                        data-opacity="0"
                        data-translatey="60"
                        data-rotatey="180">
                        <img src="images/uma-das-maiores-salinas-da-america-latina.jpg" alt="" title="" >
                        <p><% response.Write traduzir("txtFeaturesHomeTit3") %></p>
                        <figcaption><% response.Write traduzir("txtFeaturesHomeRes3") %></figcaption>
                        <br>
                        <button class="bt bt-saibaMais" onclick="location.href='a-norsal.asp'"><i class="fa fa-chevron-right" aria-hidden="true"></i> <% response.Write traduzir("txtConhecaNossaSalina") %></button>
                    </figure>
                </div>        
            </div>
        </section>

        <section class="container textos-laterais" style="padding-top:80px;padding-bottom:80px;">
            <header class="inline">
                <h2><% response.Write traduzir("txtDestaqueSection2Home") %></h2>
                <div class="lats">
                    <p><% response.Write traduzir("txtApoioSection2Home") %></p>
                </div>
            </header>
            <div class="container">
                <div class="row">
                    <div class="col-md-4 col-xs-12 text-center scrollme animateme" style="padding-top:60px"
                        data-when="span"
                        data-from="0.3"
                        data-to="0"
                        data-easing="easeinout"
                        data-opacity="0"
                        data-translatey="60"
                        data-rotatey="180"
                    >
                        <img src="images/segmento-consumidor.gif" style="cursor:pointer" alt="Consumidor" onclick="location.href='produtos.asp?idSegmento=1&idMarca=1'">
                    </div>
                    <div class="col-md-4 col-xs-12 text-center scrollme animateme" style="padding-top:60px"
                        data-when="span"
                        data-from="0.5"
                        data-to="0"
                        data-easing="easeinout"
                        data-opacity="0"
                        data-translatey="60"
                        data-rotatey="180"
                    >
                        <img src="images/segmento-industria.gif" style="cursor:pointer" alt="Indústria" onclick="location.href='produtos.asp?idSegmento=2&idMarca=1'">
                    </div>
                    <div class="col-md-4 col-xs-12 text-center scrollme animateme" style="padding-top:60px"
                        data-when="span"
                        data-from="0.7"
                        data-to="0"
                        data-easing="easeinout"
                        data-opacity="0"
                        data-translatey="60"
                        data-rotatey="180"
                    >
                        <img src="images/segmento-pecuaria.gif" style="cursor:pointer" alt="Pecuária" onclick="location.href='produtos.asp?idSegmento=3&idMarca=1'">
                    </div>
                </div>
            </div>   
        </section>

        <section class="features-home">
            <div class="container">
                <div class="row">
                    <div class="col-md-4 col-xs-12 scrollme animateme"
                        data-when="span"
                        data-from="0.3"
                        data-to="0"
                        data-easing="easeinout"
                        data-opacity="0"
                        data-translatey="60"
                        data-rotatey="180"
                    >
                        <div class="item">
                            <h2><% response.Write traduzir("txtTitFeature1Sec3Home") %></h2>
                            <p><% response.Write traduzir("txtResFeature1Sec3Home") %></p>
                            <br>
                            <button class="bt bt-branco" onclick="location.href='producao.asp'"><i class="fa fa-chevron-right azul-texto" aria-hidden="true"></i><% response.Write traduzir("txtBotaoConhecaProducao") %></button>
                        </div>
                    </div>
                    <div class="col-md-4 col-xs-12 scrollme animateme"
                        data-when="span"
                        data-from="0.5"
                        data-to="0"
                        data-easing="easeinout"
                        data-opacity="0"
                        data-translatey="60"
                        data-rotatey="180"
                    >
                        <div class="item">
                            <h2><% response.Write traduzir("txtTitFeature2Sec3Home") %></h2>
                            <p><% response.Write traduzir("txtResFeature2Sec3Home") %></p>
                            <button class="bt bt-branco" onclick="location.href='responsabilidade.asp'"><i class="fa fa-chevron-right azul-texto" aria-hidden="true"></i><% response.Write traduzir("txtBotaoConhecaProjetos") %></button>
                        </div>
                    </div>
                    <div class="col-md-4 col-xs-12 scrollme animateme"
                        data-when="span"
                        data-from="0.7"
                        data-to="0"
                        data-easing="easeinout"
                        data-opacity="0"
                        data-translatey="60"
                        data-rotatey="180"
                    >
                        <div class="item">
                            <h2><% response.Write traduzir("txtTitFeature3Sec3Home") %></h2>
                            <p><% response.Write traduzir("txtResFeature3Sec3Home") %></p>
                            <button class="bt bt-branco" onclick="location.href='fale-conosco.asp'"><i class="fa fa-chevron-right azul-texto" aria-hidden="true"></i><% response.Write traduzir("txtBotaoConhecaDistribuicao") %></button>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        
        <!--#include file="includes/fale-com-a-gente.asp"-->
        <!--#include file="includes/footer.asp"-->
        <!--#include file="includes/newsletter.asp"-->

    </main>



<script src="assets/jquery/2.1.3/jquery.min.js"></script>
<script src="assets/scrollme/jquery.scrollme.js"></script>  

<!-- verificar e retirar
<script
  src="https://code.jquery.com/jquery-3.4.1.min.js"
  integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo="
  crossorigin="anonymous"></script>

<script type="text/javascript" src="plugins/responsiveCarousel/js/responsiveCarousel.min.js"></script>
-->


<script>
//desabilita scrollme no mobile
var s = scrollme;
$(document).on( s.init_events.join(  ' '  ), function() { s.init("disable_on_mobile") } );


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

    /*
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
    */
</script>

</body>
</html>