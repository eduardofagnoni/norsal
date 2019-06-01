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

        <section id="topos" class="produtos">
            <header class="menor inline">
                <h1><% response.Write traduzir("txtTopoProdutosMarcasTit") %></h1>
                <p><% response.Write traduzir("txtTopoProdutosMarcasRes") %></p>
            </header>
        </section>

        <section class="abas-marcas-produtos">
            <div class="container">
                <div class="quadro-abas-marcas-produtos">
                    <div class="aba ativa"><img src="images/marcas/norsal.png" alt="Norsal"></div>
                    <div class="aba"><img src="images/marcas/sal-lebre.png" alt="Sal Lebre"></div>
                    <div class="aba"><img src="images/marcas/miramar.png" alt="Miramar"></div>
                    <div class="aba"><img src="images/marcas/almirante.png" alt="Almirante"></div>
                    <div class="aba"><img src="images/marcas/sal-piramide.png" alt="Sal Pirâmide"></div>
                </div>
            </div>
        </section>

        <section class="container textos-laterais" style="padding-top:100px;padding-bottom:80px;">        
            <header class="inline">
                <h2><% response.Write traduzir("txtSection1ProdutosMarcasTit") %></h2>
                <div class="lats">
                    <p><% response.Write traduzir("txtSection1ProdutosMarcasRes") %></p>
                </div>
            </header>        
        </section>

        <section class="container">
            <div class="quadro-abas">
                <div class="aba ativa"><% response.Write traduzir("txtConsumidor") %></div>
                <div class="aba"><% response.Write traduzir("txtIndustria") %></div>
                <div class="aba"><% response.Write traduzir("txtPecuaria") %></div>
            </div>
            <div class="desc">
                <p><% response.Write traduzir("txtSection2ProdutosMarcasTexto") %></p>
            </div>
        </section>

        <section class="lista-de-produtos" style="padding-top:100px;padding-bottom:80px;">
            <div class="container">            
                <ul>
                    <li>
                        <img src="images/produto-de-marcacao.jpg" alt="" title="">
                        <div>
                            <h3>Norsal Iodado</h3>
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad</p>
                            <button class="bt bt-produtos-azul">Embalagem: Pacote de 000g</button> 
                        </div>                    
                    </li>                    
                </ul>                       
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