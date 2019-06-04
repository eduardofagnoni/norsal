<%@LANGUAGE="VBSCRIPT"%>
<!-- #include file="admin/_classes/__cl__conexao.asp" -->

<!--#include file="functions/__seguranca.asp"-->
<%


idSegmento = int(request("idSegmento"))
idMarca = int(request("idMarca"))


if session("Norsal_IdSegmento") < 1 or session("Norsal_IdSegmento") = "" then
    session("Norsal_IdSegmento") = 1
else
    if idSegmento<>"" then
    session("Norsal_IdSegmento") = idSegmento
    end if
end if


if session("Norsal_IdMarca") < 1 or session("Norsal_IdMarca") = "" then
    session("Norsal_IdMarca") = 1
else
    if idMarca<>"" then
    session("Norsal_IdMarca") = idMarca
    end if
end if


Dim oListas
Set oListas = New Conexao
oListas.AbreConexao()

Dim oSegmentos
Set oSegmentos = New Conexao
oSegmentos.AbreConexao()

Dim oMarcas
Set oMarcas = New Conexao
oMarcas.AbreConexao()


oSegmentos.AbreTabela("select id,nome,nome_eng from "&oSegmentos.prefixoTabela&"segmentos where ativo='s' order by id asc")
oMarcas.AbreTabela("select id,foto,nome,nome_eng,texto,texto_eng from "&oMarcas.prefixoTabela&"marcas where ativo='s' order by id asc")

oListas.AbreTabela("select id,idSegmento,idMarca,foto,nome,nome_eng,resumo,resumo_eng,embalagem,embalagem_eng from "&oListas.prefixoTabela&"produtos where ativo='s' AND regTerminado='s' AND idSegmento="&int(session("Norsal_IdSegmento"))&" AND idMarca="&int(session("Norsal_IdMarca"))&" order by nome asc")

%>








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
                <h1><% response.Write traduzir("txtTopoProdutosTit") %></h1>
                <p><% response.Write traduzir("txtTopoProdutosRes") %></p>
            </header>
        </section>

        <section class="abas-pag-produtos" id="segmentos-prod">
            <header>
                <div class="container">
                    <div class="quadro-abas-pag-produtos">
                        <%
                            while not oSegmentos.rs.eof
                            if session("Norsal_IdSegmento")=oSegmentos.rs("id") then
                                varSegAtiva="ativa"
                            else 
                                varSegAtiva=""
                            end if
                        %>
                        <div class="aba <%=varSegAtiva%>" onclick="location.href='produtos.asp?idSegmento=<%=oSegmentos.rs("id")%>&idMarca=<%=session("Norsal_IdMarca")%>#segmentos-prod'"><%=oSegmentos.rs("nome"&sufixo_lang)%></div>
                        <%
                            oSegmentos.rs.MoveNext()
                            wend
                            oSegmentos.rs.Close()
                            set oSegmentos.rs = nothing
                        %>  
                    </div>            
                </div>
            </header>            
            <div class="desc-pag-prod">
                <div class="container">
                    <p><% response.Write traduzir("txtSection2ProdutosTexto") %></p>
                </div>            
            </div>
        </section>

        <section class="abas-marcas-produtos" id="marcas-prod">
            <div class="container">
                <div class="quadro-abas-marcas-produtos">
                    <%
                    while not oMarcas.rs.eof
                        if session("Norsal_IdMarca")=oMarcas.rs("id") then
                            varAtiva="ativa"
                        else 
                            varAtiva=""
                        end if
                    %>
                    <div class="aba <%=varAtiva%>" onclick="location.href='produtos.asp?idSegmento=<%=session("Norsal_IdSegmento")%>&idMarca=<%=oMarcas.rs("id")%>#segmentos-prod'"><img src="<%=oMarcas.enderecoMarcas%><%=oMarcas.rs("foto")%>" alt="<%=oMarcas.rs("nome"&sufixo_lang)%>" ></div>
                    <%
                    oMarcas.rs.MoveNext()
                    wend
                    oMarcas.rs.Close()
                    set oMarcas.rs = nothing
                    %>  
                </div>
            </div>
        </section>


        <%                
        oMarcas.AbreTabela("select nome,nome_eng,texto,texto_eng from "&oMarcas.prefixoTabela&"marcas where ativo='s' AND id="&session("Norsal_IdMarca"))
        %>
        <section class="container textos-laterais" style="padding-top:100px;padding-bottom:80px;">        
            <header class="inline">
                <h2><%=oMarcas.rs("nome"&sufixo_lang)%></h2>
                
                <div class="lats">
                    <p><%=oMarcas.rs("texto"&sufixo_lang)%></p>
                </div>
            </header>        
        </section>

        <section class="lista-de-produtos">
            <div class="container"> 

                <%
                    if oListas.rs.eof=true then
                    response.write("<p style='text-align:center;margin-bottom:60px;'>Estamos preparando os produtos dessa área.<br>Consulte novamente mais tarde, ou escreva-nos, clicando no botão abaixo.</p>")
                    end if
                %>

                <ul>

                    <%                   
                    while not oListas.rs.eof
                    %>
                    <li>
                        <img src="<%=oListas.enderecoProdutos%><%=oListas.rs("foto")%>" alt="<%=oListas.rs("nome"&sufixo_lang)%>" >
                        <div>
                            <h3><%=oListas.rs("nome"&sufixo_lang)%></h3>
                            <p><%=oListas.rs("resumo"&sufixo_lang)%></p>
                            <p><strong><%=oListas.rs("embalagem"&sufixo_lang)%></strong></p>
                        </div>                    
                    </li>  
                    <%
                    oListas.rs.MoveNext()
                    wend
                    oListas.rs.Close()
                    set oListas.rs = nothing
                    %>  

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