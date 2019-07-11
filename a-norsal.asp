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

        <section id="topos" class="a-norsal">
            <header class="inline">
                <h1><% response.Write traduzir("txtTopoANorsal") %></h1>
                <p><% response.Write traduzir("txtTopoANorsalApoio") %></p>
            </header>
        </section>

        <section style="padding:0;margin:0; background: rgb(233,233,233); background: -moz-linear-gradient(top,  rgba(233,233,233,1) 73%, rgba(209,209,209,1) 100%); background: -webkit-linear-gradient(top,  rgba(233,233,233,1) 73%,rgba(209,209,209,1) 100%); background: linear-gradient(to bottom,  rgba(233,233,233,1) 73%,rgba(209,209,209,1) 100%); filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#e9e9e9', endColorstr='#d1d1d1',GradientType=0 ); ">
            <div class="container" style="">
                <div class="features" style="position:relative; margin:-60px 0 -3px 0; z-index:2;">
                    <article class="numeros">
                        <header><% response.Write traduzir("txtSection1ANorsalTit1") %></header>
                        <p><% response.Write traduzir("txtSection1ANorsalRes1") %></p>
                    </article>
                    <article class="numeros">
                        <header><% response.Write traduzir("txtSection1ANorsalTit2") %></header>
                        <p><% response.Write traduzir("txtSection1ANorsalRes2") %></p>
                    </article>
                    <article class="numeros">
                        <header><% response.Write traduzir("txtSection1ANorsalTit3") %></header>
                        <p><% response.Write traduzir("txtSection1ANorsalRes3") %></p>
                    </article>
                </div>        
            </div>
        </section>

        <section class="container textos-laterais" style="padding-top:100px;padding-bottom:80px;">        
            <header class="inline row">
                <div class="col-md-6 col-xs-12">
                    <h2 style="text-transform:none;margin-bottom:20px;"><% response.Write traduzir("txtSection2ANorsalTit") %></h2>                    
                    <p><% response.Write traduzir("txtSection2ANorsalApoio") %></p>
                </div>
                <div class="col-md-6 col-xs-12">
                    <img src="images/video-salinas.jpg" alt="Vídeo Salinas">
                </div>                
            </header>        
        </section>

        <section class="textos-laterais nossa-historia">
            <div class="container">

                    <header>
                        <h2 style="color:#fff;"><% response.Write traduzir("txtSection3ANorsalTit") %></h2>
                    </header> 
                    
                    <ol class="linha-do-tempo">
                        <li>
                            <div class="item scrollme animateme"
                                data-when="exit"
                                data-from="0.3"
                                data-to="0"
                                data-easing="easeinout"
                                data-opacity="0"
                                data-translatey="90"
                            >
                                <div class="col">                                
                                    <h3 class="scrollme animateme"
                                        data-when="span"
                                        data-from="0.5"
                                        data-to="0"
                                        data-easing="easeinout"
                                        data-opacity="0"
                                        data-translatex="-40" 
                                    ><% response.Write traduzir("txtLinhaDoTempoANorsalAno1") %></h3>
                                </div>
                                <div class="col">
                                    <div class="cont scrollme animateme"
                                        data-when="span"
                                        data-from="0.9"
                                        data-to="0"
                                        data-easing="easeinout"
                                        data-opacity="0"
                                        data-translatex="40"
                                    >
                                        <p><% response.Write traduzir("txtLinhaDoTempoANorsalTit1") %></p>
                                        <p><% response.Write traduzir("txtLinhaDoTempoANorsalTexto1") %></p>
                                    </div> 
                                </div>
                            </div>
                        </li>

                        <li>
                            <div class="item scrollme animateme"
                                data-when="exit"
                                data-from="0.3"
                                data-to="0"
                                data-easing="easeinout"
                                data-opacity="0"
                                data-translatey="90"
                            >
                                <div class="col">                                
                                    <h3 class="scrollme animateme"
                                        data-when="span"
                                        data-from="0.5"
                                        data-to="0"
                                        data-easing="easeinout"
                                        data-opacity="0"
                                        data-translatex="-40"
                                    ><% response.Write traduzir("txtLinhaDoTempoANorsalAno2") %></h3>
                                </div>
                                <div class="col">
                                    <div class="cont scrollme animateme"
                                        data-when="span"
                                        data-from="0.9"
                                        data-to="0"
                                        data-easing="easeinout"
                                        data-opacity="0"
                                        data-translatex="40"
                                    >
                                        <p><% response.Write traduzir("txtLinhaDoTempoANorsalTit2") %></p>
                                        <p><% response.Write traduzir("txtLinhaDoTempoANorsalTexto2") %></p>
                                    </div> 
                                </div>
                            </div>
                        </li>

                        <li>
                            <div class="item scrollme animateme"
                                data-when="exit"
                                data-from="0.3"
                                data-to="0"
                                data-easing="easeinout"
                                data-opacity="0"
                                data-translatey="90"
                            >
                                <div class="col">                                
                                    <h3 class="scrollme animateme"
                                        data-when="span"
                                        data-from="0.5"
                                        data-to="0"
                                        data-easing="easeinout"
                                        data-opacity="0"
                                        data-translatex="-40"
                                    ><% response.Write traduzir("txtLinhaDoTempoANorsalAno3") %></h3>
                                </div>
                                <div class="col">
                                    <div class="cont scrollme animateme"
                                        data-when="span"
                                        data-from="0.9"
                                        data-to="0"
                                        data-easing="easeinout"
                                        data-opacity="0"
                                        data-translatex="40"
                                    >
                                        <p><% response.Write traduzir("txtLinhaDoTempoANorsalTit3") %></p>
                                        <p><% response.Write traduzir("txtLinhaDoTempoANorsalTexto3") %></p>
                                    </div> 
                                </div>
                            </div>
                        </li>

                        <li>
                            <div class="item scrollme animateme"
                                data-when="exit"
                                data-from="0.3"
                                data-to="0"
                                data-easing="easeinout"
                                data-opacity="0"
                                data-translatey="90"
                            >
                                <div class="col">                                
                                    <h3 class="scrollme animateme"
                                        data-when="span"
                                        data-from="0.5"
                                        data-to="0"
                                        data-easing="easeinout"
                                        data-opacity="0"
                                        data-translatex="-40"
                                    ><% response.Write traduzir("txtLinhaDoTempoANorsalAno4") %></h3>
                                </div>
                                <div class="col">
                                    <div class="cont scrollme animateme"
                                        data-when="span"
                                        data-from="0.9"
                                        data-to="0"
                                        data-easing="easeinout"
                                        data-opacity="0"
                                        data-translatex="40"
                                    >
                                        <p><% response.Write traduzir("txtLinhaDoTempoANorsalTit4") %></p>
                                        <p><% response.Write traduzir("txtLinhaDoTempoANorsalTexto4") %></p>
                                    </div> 
                                </div>
                            </div>
                        </li>

                        <li>
                            <div class="item scrollme animateme"
                                data-when="exit"
                                data-from="0.3"
                                data-to="0"
                                data-easing="easeinout"
                                data-opacity="0"
                                data-translatey="90"
                            >
                                <div class="col">                                
                                    <h3 class="scrollme animateme"
                                        data-when="span"
                                        data-from="0.5"
                                        data-to="0"
                                        data-easing="easeinout"
                                        data-opacity="0"
                                        data-translatex="-40"
                                    ><% response.Write traduzir("txtLinhaDoTempoANorsalAno5") %></h3>
                                </div>
                                <div class="col">
                                    <div class="cont scrollme animateme"
                                        data-when="span"
                                        data-from="0.9"
                                        data-to="0"
                                        data-easing="easeinout"
                                        data-opacity="0"
                                        data-translatex="40"
                                    >
                                        <p><% response.Write traduzir("txtLinhaDoTempoANorsalTit5") %></p>
                                        <p><% response.Write traduzir("txtLinhaDoTempoANorsalTexto5") %></p>
                                    </div> 
                                </div>
                            </div>
                        </li>

                        <li>
                            <div class="item scrollme animateme"
                                data-when="exit"
                                data-from="0.3"
                                data-to="0"
                                data-easing="easeinout"
                                data-opacity="0"
                                data-translatey="90"
                            >
                                <div class="col">                                
                                    <h3 class="scrollme animateme"
                                        data-when="span"
                                        data-from="0.5"
                                        data-to="0"
                                        data-easing="easeinout"
                                        data-opacity="0"
                                        data-translatex="-40"
                                    ><% response.Write traduzir("txtLinhaDoTempoANorsalAno6") %></h3>
                                </div>
                                <div class="col">
                                    <div class="cont scrollme animateme"
                                        data-when="span"
                                        data-from="0.9"
                                        data-to="0"
                                        data-easing="easeinout"
                                        data-opacity="0"
                                        data-translatex="40"
                                    >
                                        <p><% response.Write traduzir("txtLinhaDoTempoANorsalTit6") %></p>
                                        <p><% response.Write traduzir("txtLinhaDoTempoANorsalTexto6") %></p>
                                    </div> 
                                </div>
                            </div>
                        </li>

                        <li>
                            <div class="item scrollme animateme"
                                data-when="exit"
                                data-from="0.3"
                                data-to="0"
                                data-easing="easeinout"
                                data-opacity="0"
                                data-translatey="90"
                            >
                                <div class="col">                                
                                    <h3 class="scrollme animateme"
                                        data-when="span"
                                        data-from="0.5"
                                        data-to="0"
                                        data-easing="easeinout"
                                        data-opacity="0"
                                        data-translatex="-40"
                                    ><% response.Write traduzir("txtLinhaDoTempoANorsalAno7") %></h3>
                                </div>
                                <div class="col">
                                    <div class="cont scrollme animateme"
                                        data-when="span"
                                        data-from="0.9"
                                        data-to="0"
                                        data-easing="easeinout"
                                        data-opacity="0"
                                        data-translatex="40"
                                    >
                                        <p><% response.Write traduzir("txtLinhaDoTempoANorsalTit7") %></p>
                                        <p><% response.Write traduzir("txtLinhaDoTempoANorsalTexto7") %></p>
                                    </div> 
                                </div>
                            </div>
                        </li>

                        <li>
                            <div class="item scrollme animateme"
                                data-when="exit"
                                data-from="0.3"
                                data-to="0"
                                data-easing="easeinout"
                                data-opacity="0"
                                data-translatey="90"
                            >
                                <div class="col">                                
                                    <h3 class="scrollme animateme"
                                        data-when="span"
                                        data-from="0.5"
                                        data-to="0"
                                        data-easing="easeinout"
                                        data-opacity="0"
                                        data-translatex="-40"
                                    ><% response.Write traduzir("txtLinhaDoTempoANorsalAno8") %></h3>
                                </div>
                                <div class="col">
                                    <div class="cont scrollme animateme"
                                        data-when="span"
                                        data-from="0.9"
                                        data-to="0"
                                        data-easing="easeinout"
                                        data-opacity="0"
                                        data-translatex="40"
                                    >
                                        <p><% response.Write traduzir("txtLinhaDoTempoANorsalTit8") %></p>
                                        <p><% response.Write traduzir("txtLinhaDoTempoANorsalTexto8") %></p>
                                    </div> 
                                </div>
                            </div>
                        </li>

                        <li>
                            <div class="item scrollme animateme"
                                data-when="exit"
                                data-from="0.3"
                                data-to="0"
                                data-easing="easeinout"
                                data-opacity="0"
                                data-translatey="90"
                            >
                                <div class="col">                                
                                    <h3 class="scrollme animateme"
                                        data-when="span"
                                        data-from="0.5"
                                        data-to="0"
                                        data-easing="easeinout"
                                        data-opacity="0"
                                        data-translatex="-40"
                                    ><% response.Write traduzir("txtLinhaDoTempoANorsalAno9") %></h3>
                                </div>
                                <div class="col">
                                    <div class="cont scrollme animateme"
                                        data-when="span"
                                        data-from="0.9"
                                        data-to="0"
                                        data-easing="easeinout"
                                        data-opacity="0"
                                        data-translatex="40"
                                    >
                                        <p><% response.Write traduzir("txtLinhaDoTempoANorsalTit9") %></p>
                                        <p><% response.Write traduzir("txtLinhaDoTempoANorsalTexto9") %></p>
                                    </div> 
                                </div>
                            </div>
                        </li>

                        <li>
                            <div class="item scrollme animateme"
                                data-when="exit"
                                data-from="0.3"
                                data-to="0"
                                data-easing="easeinout"
                                data-opacity="0"
                                data-translatey="90"
                            >
                                <div class="col">                                
                                    <h3 class="scrollme animateme"
                                        data-when="span"
                                        data-from="0.5"
                                        data-to="0"
                                        data-easing="easeinout"
                                        data-opacity="0"
                                        data-translatex="-40"
                                    ><% response.Write traduzir("txtLinhaDoTempoANorsalAno10") %></h3>
                                </div>
                                <div class="col">
                                    <div class="cont scrollme animateme"
                                        data-when="span"
                                        data-from="0.9"
                                        data-to="0"
                                        data-easing="easeinout"
                                        data-opacity="0"
                                        data-translatex="40"
                                    >
                                        <p><% response.Write traduzir("txtLinhaDoTempoANorsalTit10") %></p>
                                        <p><% response.Write traduzir("txtLinhaDoTempoANorsalTexto10") %></p>
                                    </div> 
                                </div>
                            </div>
                        </li>

                    </ol>    

            </div>
        </section>

        <section class="container textos-laterais" style="padding-top:100px;padding-bottom:80px;">        
            <header class="inline">
                <h2><% response.Write traduzir("txtSection4ANorsalTit") %></h2>
                <div class="lats">
                    <p><% response.Write traduzir("txtSection4ANorsalApoio") %></p>
                </div>
            </header>        

            <div class="row">
                <div class="col-md-4 col-xs-12">
                    <img src="images/salina-miramar-localizacao.gif" alt="A salina Miramar - Localizada em Areia Branca, Rio Grande do Norte" style="margin: 20px 0;" >                
                    <% response.Write traduzir("txtSection4ANorsalTexto") %>
                </div>
                <div class="col-md-8 col-xs-12">
                    <div class="galeria" style="margin:40px 0 0 0;">
                        <div class="crsl-items" data-navigation="navbtns">
                            <div class="crsl-wrap">
                                <div class="crsl-item">
                                        <img src="plugins/responsiveCarousel/img/thumb01.jpg" alt="nyc subway">
                                </div>
                                
                                <div class="crsl-item">
                                        <img src="plugins/responsiveCarousel/img/thumb02.jpg" alt="danny antonucci">
                                </div>   

                                <div class="crsl-item">
                                        <img src="plugins/responsiveCarousel/img/thumb01.jpg" alt="nyc subway">
                                </div>                      
                            </div>
                        </div>
                    </div>                
                </div>
            </div>
            
            <nav class="slidernav" style="margin-top:10px; margin-right:-10px;">
                <div id="navbtns" class="clearfix">
                    <a href="#" class="previous"><span class="fa fa-chevron-left"></span></a>
                    <a href="#" class="next"><span class="fa fa-chevron-right"></span></a>
                </div>
            </nav>   
        </section>

        <div id="certificacao"></div>

        <section class="textos-laterais" style="background:#e9e9e9;padding-top:100px;padding-bottom:80px;">  
            <div class="container">
                <header>
                    <h2><% response.Write traduzir("txtSection5ANorsalTit") %></h2>
                </header>
                <div class="row" style="margin-top:40px;">
                    <div class="col-sm-3 col-md-2 col-xs-12">
                        <img src="images/selo.gif" alt="Certificação ISO 22000">
                    </div>
                    <div class="col-sm-9 col-md-10 col-xs-12">
                        <p style="margin-top:20px;"><% response.Write traduzir("txtSection5ANorsalTexto") %></p>
                    </div>
                </div>
            </div>  
        </section>

        <section id="mapa" class="textos-laterais mapaMarca">
            <div class="container">
                <div class="col-md-5 col-xs-12">
                        <header>
                            <h2 style="color:#fff;margin-bottom:8px;"><% response.Write traduzir("txtSection6ANorsalTit") %></h2>
                        </header> 
                        <p><% response.Write traduzir("txtSection6ANorsalTexto") %></p>

                        <h3><% response.Write traduzir("txtSection6ANorsalSubTit") %></h3>
                        <p><% response.Write traduzir("txtSection6ANorsalTexto2") %></p>
                </div>
                <div class="col-md-7 col-xs-12 text-center">
                    <img src="images/mapa.png" alt="Mapa de atuação" class="img-mapa scrollme animateme"
                        data-when="enter"
                        data-from="0.9"
                        data-to="0"
                        data-easing="easeinout"
                        data-opacity="0"
                        data-translatey="60"
                        data-rotatey="180"
                    >

                    <ul class="malhas-e-vias">
                        <li class="scrollme animateme"
                            data-when="enter"
                            data-from="0.3"
                            data-to="0"
                            data-easing="easeinout"
                            data-opacity="0"
                            data-translatey="60"
                        ><span class="rod"></span><p><% response.Write traduzir("txtSection6ANorsalItem1") %></p></li>
                        <li class="scrollme animateme"
                            data-when="enter"
                            data-from="0.3"
                            data-to="0"
                            data-easing="easeinout"
                            data-opacity="0"
                            data-translatey="60"
                        ><span class="fer"></span><p><% response.Write traduzir("txtSection6ANorsalItem2") %></small></p></li>
                        <li class="scrollme animateme"
                            data-when="enter"
                            data-from="0.3"
                            data-to="0"
                            data-easing="easeinout"
                            data-opacity="0"
                            data-translatey="60"
                        ><span class="mar"></span><p><% response.Write traduzir("txtSection6ANorsalItem3") %></p></li>
                    </ul>
                </div>
            </div>
        </section>

        <section class="textos-laterais" style="padding-top:100px;padding-bottom:80px;">        
            <div class="container">
                <header>
                    <h2><% response.Write traduzir("txtSection7ANorsalTit") %></h2>
                </header>    

                <ul class="nossas-marcas" style="margin-top:40px;">
                    <li onclick="location.href='produtos.asp?idSegmento=1&idMarca=1'"><img src="images/marcas/norsal.png" alt="Norsal" title=""></li>
                    <li onclick="location.href='produtos.asp?idSegmento=1&idMarca=2'"><img src="images/marcas/sal-lebre.png" alt="Sal Lebre" title=""></li>
                    <li onclick="location.href='produtos.asp?idSegmento=1&idMarca=3'"><img src="images/marcas/miramar.png" alt="Miramar" title=""></li>
                    <li onclick="location.href='produtos.asp?idSegmento=1&idMarca=4'"><img src="images/marcas/almirante.png" alt="Almirante" title=""></li>
                    <li onclick="location.href='produtos.asp?idSegmento=1&idMarca=5'"><img src="images/marcas/sal-piramide.png" alt="Sal Pirâmide" title=""></li>
                </ul> 
            </div>                
        </section>



        
        <!--#include file="includes/fale-com-a-gente.asp"-->
        <!--#include file="includes/footer.asp"-->
        <!--#include file="includes/newsletter.asp"-->

    </main>

<script src="assets/jquery/2.1.3/jquery.min.js"></script>
<script src="assets/scrollme/jquery.scrollme.js"></script>

<!--
<script
  src="https://code.jquery.com/jquery-3.4.1.min.js"
  integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo="
  crossorigin="anonymous"></script>
-->

<script type="text/javascript" src="plugins/responsiveCarousel/js/responsiveCarousel.min.js"></script>

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