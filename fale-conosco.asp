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

        <section id="topos" class="fale-com-a-gente-topo">
            <header class="menor inline">
                <h1><% response.Write traduzir("txtTopoFaleConoscoTit") %></h1>
                <p><% response.Write traduzir("txtTopoFaleConoscoRes") %></p>
            </header>
        </section>


        <div style="height:35px; background: rgb(233,233,233); background: -moz-linear-gradient(top,  rgba(233,233,233,1) 73%, rgba(209,209,209,1) 100%); background: -webkit-linear-gradient(top,  rgba(233,233,233,1) 73%,rgba(209,209,209,1) 100%); background: linear-gradient(to bottom,  rgba(233,233,233,1) 73%,rgba(209,209,209,1) 100%); filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#e9e9e9', endColorstr='#d1d1d1',GradientType=0 );"></div>

        
        <section id="fale-conosco">
            <div class="container">
                <div class="col-md-2 col-xs-12"></div>
                <div class="col-md-8 col-xs-12">
                    <form id="frmFaleConosco" method="POST" action="">
                        <div class="col-md-6 col-xs-12">
                            <input type="text" name="" id="" placeholder="<% response.Write traduzir("txtFaleConoscoFormNome") %>">
                            <input type="email" name="" id="" placeholder="<% response.Write traduzir("txtFaleConoscoFormEmail") %>">
                            <input type="tel" name="" id="" placeholder="<% response.Write traduzir("txtFaleConoscoFormTelefone") %>">
                            <input type="text" name="" id="" placeholder="<% response.Write traduzir("txtFaleConoscoFormEmpresa") %>">
                        </div>
                        <div class="col-md-6 col-xs-12">
                            <select name="" id="">
                                <option value=""><% response.Write traduzir("txtFaleConoscoFormSetor") %></option>
                                <option value="...">...</option>
                            </select>
                            <textarea name="" id="" placeholder="<% response.Write traduzir("txtFaleConoscoFormMsg") %>"></textarea>
                            <button type="submit" class="bt bt-fomulario" style="float:right"><% response.Write traduzir("txtBotaoCadastrar") %></button> 
                        </div>
                    </form>
                </div>
                <div class="col-md-2 col-xs-12"></div>                
            </div>
            <div class="container">
                <div style="margin-top:40px; text-align:center;">
                    <p><% response.Write traduzir("txtFaleConoscoFormMsgFinal") %></p>
                </div>
            </div>
        </section>

        <section class="centros-de-distribuicao">
            <div class="container">
                <div class="col-xs-12 col-sm-6 col-md-3">
                    <h4><% response.Write traduzir("txtFaleConoscoCentrosItem1Tit") %></h4>
                    <p><% response.Write traduzir("txtFaleConoscoCentrosItem1End") %></p>
                </div>
                <div class="col-xs-12 col-sm-6 col-md-3">
                    <h4><% response.Write traduzir("txtFaleConoscoCentrosItem2Tit") %></h4>
                    <p><% response.Write traduzir("txtFaleConoscoCentrosItem2End") %></p>
                </div>
                <div class="col-xs-12 col-sm-6 col-md-3">
                    <h4><% response.Write traduzir("txtFaleConoscoCentrosItem3Tit") %></h4>
                    <span><% response.Write traduzir("txtFaleConoscoCentrosItem3Comp") %></span>
                    <p><% response.Write traduzir("txtFaleConoscoCentrosItem3End") %></p>
                </div>
                <div class="col-xs-12 col-sm-6 col-md-3">
                    <h4><% response.Write traduzir("txtFaleConoscoCentrosItem4Tit") %></h4>
                    <p><% response.Write traduzir("txtFaleConoscoCentrosItem4End") %></p>
                </div>
            </div>
        </section>

        
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