<footer>
    <div class="container">
        <header>
            <a href=""><img src="images/norsal.png" alt="Norsal" title="Norsal"></a>                
        </header>
        <ul>
            <li><% response.Write traduzir("txtHome") %><br>
                <ul>
                    <li><a href="produtos.asp?idSegmento=1&idMarca=2"><% response.Write traduzir("linkSalLebre") %></a></li>
                    <li><a href="produtos.asp?idSegmento=1&idMarca=3"><% response.Write traduzir("linkMiramar") %></a></li>
                    <li><a href="produtos.asp?idSegmento=1&idMarca=1"><% response.Write traduzir("linkNorsal") %></a></li>
                    <li><a href="produtos.asp?idSegmento=1&idMarca=4"><% response.Write traduzir("linkAlmirante") %></a></li>
                    <li><a href="produtos.asp?idSegmento=1&idMarca=5"><% response.Write traduzir("linkPiramide") %></a></li>
                    <li><a href=""><% response.Write traduzir("linkOSal") %></a></li>
                    <li><a href=""><% response.Write traduzir("linkMuitoAlemDoSal") %></a></li>
                </ul>
            </li>
            <li><% response.Write traduzir("txtANorsal") %><br>
                <ul>
                    <li><a href=""><% response.Write traduzir("linkCertificacoes") %></a></li>
                    <li><a href=""><% response.Write traduzir("linkConhecaANorsal") %></a></li>
                    <li><a href=""><% response.Write traduzir("linkManifesto") %></a></li>
                    <li><a href=""><% response.Write traduzir("linkLinhaDoTempo") %></a></li>
                    <li><a href=""><% response.Write traduzir("linkASalinaMiramar") %></a></li>
                    <li><a href=""><% response.Write traduzir("linkNossasMarcas") %></a></li>
                    <li><a href=""><% response.Write traduzir("linkDistribuicaoNorsal") %></a></li>
                </ul>
            </li>
            <li><% response.Write traduzir("txtProdutos") %><br>
                <ul>
                    <li><a href="produtos.asp?idSegmento=1&idMarca=1"><% response.Write traduzir("linkConsumidor") %></a></li>
                    <li><a href="produtos.asp?idSegmento=2&idMarca=1"><% response.Write traduzir("linkIndustria") %></a></li>
                    <li><a href="produtos.asp?idSegmento=3&idMarca=1"><% response.Write traduzir("linkPecuaria") %></a></li>
                </ul>
            </li>
            <li><% response.Write traduzir("txtResponsabilidade") %><br>
                <ul>
                    <li><a href="responsabilidade.asp"><% response.Write traduzir("linkNossosProjetos") %></a></li>
                </ul>
            </li>
            <li><% response.Write traduzir("txtFaleConosco") %><br>
                <ul>
                    <li><a href="fale-conosco.asp"><% response.Write traduzir("linkEntreEmContato") %></a></li>
                    <li><a href="fale-conosco.asp"><% response.Write traduzir("linkEnderecosETelefones") %></a></li>
                </ul>
            </li>
        </ul>
    </div>
</footer>