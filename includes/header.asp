<%
if Session("linguagem") = "_en" then
    posicaoSelectLang = "selected"
else

end if
%>
<!--Header Menu-->
<header id="menu">
    <div class="container-fluid barra-menu">
        <div class="container">
            <a href="default.asp"><img src="images/norsal.png" alt="Norsal" title="Norsal"></a>
        
            <button class="c-hamburger c-hamburger--htx" title="Menu">
                <span>toggle menu</span>
            </button>
        </div>                
    </div>            

    <nav>
        <ul id="ul-colunas">
            <li id="li-esquerda">
                <ul>
                    <li class="lang">                                
                        <form action="functions/__set_idioma.asp" method="post" id="" name="">
                            <select id="lang" name="lang" onchange="this.form.submit();">
                                <option value="ptBr">Português</option>
                                <option Value="_en" <%=posicaoSelectLang%> >Inglês</option>
                            </select>
                            <input type="hidden" id="nomeDaPagina" name="nomeDaPagina" value="<%=nomepagina%>">
                        </form>
                    </li>
                    <li><a href="default.asp"><% response.Write traduzir("linkHome") %></a></li>
                    <li><a href="a-norsal.asp"><% response.Write traduzir("linkANorsal") %></a></li>
                    <li><a href="producao.asp"><% response.Write traduzir("linkProducao") %></a></li>
                    <li><a href="produtos.asp"><% response.Write traduzir("linkProdutos") %></a></li>
                    <li><a href="marcas.asp"><% response.Write traduzir("linkMarcas") %></a></li>
                    <li><a href="responsabilidade.asp"><% response.Write traduzir("linkResponsabilidade") %></a></li>
                    <li><a href="fale-conosco.asp"><% response.Write traduzir("linkFaleConosco") %></a></li>
                    <li><a href="novidades.asp"><% response.Write traduzir("linkNovidades") %></a></li>
                </ul>
                <div class="clearfix"></div>
            </li>
            <li id="li-direita">
                <p><% response.Write traduzir("txtNossosProdutos") %></p>
                <ul>
                    <li><a href=""><% response.Write traduzir("linkConsumidor") %></a></li>
                    <li><a href=""><% response.Write traduzir("linkIndustria") %></a></li>
                    <li><a href=""><% response.Write traduzir("linkPecuaria") %></a></li>
                </ul>
                <p><% response.Write traduzir("txtNossasMarcas") %></p>
                <ul>
                    <li><a href=""><% response.Write traduzir("linkSalLebre") %></a></li>
                    <li><a href=""><% response.Write traduzir("linkMiramar") %></a></li>
                    <li><a href=""><% response.Write traduzir("linkNorsal") %></a></li>
                    <li><a href=""><% response.Write traduzir("linkAlmirante") %></a></li>
                    <li><a href=""><% response.Write traduzir("linkPiramide") %></a></li>
                </ul>
            </li>
        </ul>          
        <div class="clearfix"></div>
    </nav>
</header> <!--Header Menu - Fim-->