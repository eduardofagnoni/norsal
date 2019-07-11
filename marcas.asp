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

        <section id="topos" class="marcas">
            <header class="menor inline">
                <h1><% response.Write traduzir("txtTopoMarcasTit") %></h1>
                <p><% response.Write traduzir("txtTopoMarcasTexto") %></p>
            </header>
        </section>

        <div style="height:35px; background: rgb(233,233,233); background: -moz-linear-gradient(top,  rgba(233,233,233,1) 73%, rgba(209,209,209,1) 100%); background: -webkit-linear-gradient(top,  rgba(233,233,233,1) 73%,rgba(209,209,209,1) 100%); background: linear-gradient(to bottom,  rgba(233,233,233,1) 73%,rgba(209,209,209,1) 100%); filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#e9e9e9', endColorstr='#d1d1d1',GradientType=0 );"></div>

        <section class="lista-de-marcas" style="padding-top:80px;padding-bottom:80px;">

            <div class="container">
                <div class="row">
                    <div class="col-md-4 col-xs-12" style="margin-bottom:60px">
                        <img src="images/marcas/norsal.png" alt="Norsal" style="margin-bottom:30px">
                        <p style="margin-bottom:50px"><% response.Write traduzir("txtMarcasNorsal") %></p>                        
                        <a href="produtos.asp?idSegmento=1&idMarca=1" class="bt bt-azul-cinza"><i class="fa fa-chevron-right" aria-hidden="true"></i><% response.Write traduzir("txtBotaoConhecaProdutos") %></a>
                    </div>
                    <div class="col-md-4 col-xs-12" style="margin-bottom:60px">
                        <img src="images/marcas/sal-lebre.png" alt="Sal Lebre" style="margin-bottom:30px">
                        <p style="margin-bottom:50px"><% response.Write traduzir("txtMarcasSalLebre") %></p>
                        <a href="produtos.asp?idSegmento=1&idMarca=2" class="bt bt-azul-cinza"><i class="fa fa-chevron-right" aria-hidden="true"></i><% response.Write traduzir("txtBotaoConhecaProdutos") %></a>
                    </div>
                    <div class="col-md-4 col-xs-12" style="margin-bottom:60px">
                        <img src="images/marcas/miramar.png" alt="Miramar" style="margin-bottom:30px">
                        <p style="margin-bottom:50px"><% response.Write traduzir("txtMarcasMiramar") %></p>
                        <a href="produtos.asp?idSegmento=1&idMarca=3" class="bt bt-azul-cinza"><i class="fa fa-chevron-right" aria-hidden="true"></i><% response.Write traduzir("txtBotaoConhecaProdutos") %></a>
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-4 col-xs-12" style="margin-bottom:60px">
                        <img src="images/marcas/almirante.png" alt="Almirante" style="margin-bottom:30px">
                        <p style="margin-bottom:50px"><% response.Write traduzir("txtMarcasAlmirante") %></p>
                        <a href="produtos.asp?idSegmento=1&idMarca=4" class="bt bt-azul-cinza"><i class="fa fa-chevron-right" aria-hidden="true"></i><% response.Write traduzir("txtBotaoConhecaProdutos") %></a>
                    </div>
                    <div class="col-md-4 col-xs-12" style="margin-bottom:60px">
                        <img src="images/marcas/sal-piramide.png" alt="Sal Pirâmide" style="margin-bottom:30px">
                        <p style="margin-bottom:50px"><% response.Write traduzir("txtMarcasSalPiramide") %></p>
                        <a href="produtos.asp?idSegmento=1&idMarca=5" class="bt bt-azul-cinza"><i class="fa fa-chevron-right" aria-hidden="true"></i><% response.Write traduzir("txtBotaoConhecaProdutos") %></a>
                    </div>
                </div>
            </div>

        </section>       

        
        <!--#include file="includes/fale-com-a-gente.asp"-->
        <!--#include file="includes/footer.asp"-->
        <!--#include file="includes/newsletter.asp"-->

    </main>


<!--
<script
  src="https://code.jquery.com/jquery-3.4.1.min.js"
  integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo="
  crossorigin="anonymous"></script>

<script type="text/javascript" src="plugins/responsiveCarousel/js/responsiveCarousel.min.js"></script>
-->

<script src="assets/jquery/2.1.3/jquery.min.js"></script>
<script src="assets/scrollme/jquery.scrollme.js"></script>  


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