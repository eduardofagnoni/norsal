<%@LANGUAGE="VBSCRIPT"%>
<!-- #include file="admin/_classes/__cl__conexao.asp" -->

<!--#include file="functions/idiomas.asp"-->
<!--#include file="functions/__pega_nome_da_pagina.asp"-->

<%
Function SafeSQL(sInput)
    TempString = sInput	  
    sBadChars=array("select", "drop", ";", "--", "insert", "delete", "xp_", "#", "%", "&", "'", "(", ")", ":", ";", "<", ">", "=", "[", "]", "?", "'", "|") 
    For iCounter = 0 to uBound(sBadChars)
    TempString = replace(TempString,sBadChars(iCounter),"")
    Next
    SafeSQL = TempString
End function

id = SafeSQL(request.Form("id"))


Dim oListaProjeto
Set oListaProjeto = New Conexao
oListaProjeto.AbreConexao()
oListaProjeto.AbreTabela("select nome,fotoTopoPagina,texto,dataProjeto from "&oListaProjeto.prefixoTabela&"projetos where ativo='s' AND regTerminado='s' AND id="&id)

%>

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

        <section id="topos" class="responsabilidade">
            <header class="menor inline">
                <h1><% response.Write traduzir("txtTopoResponsabilidadeInternaTit") %></h1>
                <p><% response.Write traduzir("txtTopoResponsabilidadeInternaRes") %></p>
            </header>
        </section>


        <div style="height:35px; background: rgb(233,233,233); background: -moz-linear-gradient(top,  rgba(233,233,233,1) 73%, rgba(209,209,209,1) 100%); background: -webkit-linear-gradient(top,  rgba(233,233,233,1) 73%,rgba(209,209,209,1) 100%); background: linear-gradient(to bottom,  rgba(233,233,233,1) 73%,rgba(209,209,209,1) 100%); filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#e9e9e9', endColorstr='#d1d1d1',GradientType=0 );"></div>

        
        
        <section class="container textos-laterais pag-int-resp" style="padding-top:80px;padding-bottom:80px;"> 
            <div class="container">
                <div class="row">
                    <div class="col-xs-12 col-sm-8 col-md-9">
                        <header>
                            <h3><%=oListaProjeto.rs("nome")%></h3>
                        </header>
                        <small><%=oListaProjeto.rs("dataProjeto")%></small>
                        <img src="<%=oListaProjeto.enderecoProjetos%><%=oListaProjeto.rs("fotoTopoPagina")%>" alt="<%=oListaProjeto.rs("nome")%>">
                        <%=oListaProjeto.rs("texto")%>

                        <div class="clearfix"></div>
                        <div class="compartilhamento">
                            <p><% response.Write traduzir("txtSecton2ResponsabilidadeInternaCompartilhar") %>: <a href="" target="_blank" class="fa fa-facebook-square"></a> <a href="" target="_blank" class="fa fa-linkedin-square"></a> <a href="" target="_blank" class="fa fa-youtube-square"></a></p>
                        </div>
                    </div>
                    <div class="col-xs-12 col-sm-4 col-md-3">
                        <h4><% response.Write traduzir("txtSecton3ResponsabilidadeInternaVisitas") %></h4>
                        <ol>
                            <li>
                            <small>22.07.2019</small>
                            <h5>Lorem ipsum dolor sit amet, consectetur</h5>
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt.</p>
                            </li>
                            <li>
                            <small>22.07.2019</small>
                            <h5>Lorem ipsum dolor sit amet, consectetur</h5>
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt.</p>
                            </li>
                            <li>
                            <small>22.07.2019</small>
                            <h5>Lorem ipsum dolor sit amet, consectetur</h5>
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt.</p>
                            </li>
                        </ol>
                        <div class="ban-promo">
                            <img src="images/bn-marc.jpg" alt="" >
                        </div>
                    </div>                    
                </div> 
                <div class="row">
                    
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