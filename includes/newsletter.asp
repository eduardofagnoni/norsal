<section class="newsletter">
    <div class="container">
        <ul>
            <li>
                <header><% response.Write traduzir("txtTitCadastrese") %></header>
                <p><% response.Write traduzir("txtApoioCadastrese") %></p>
            </li>
            <li>
                <form id="frm-newsletter" action="" method="post">
                    <input type="text" id="txtNewsNome" name="txtNewsNome" placeholder="<% response.Write traduzir("txtInputNome") %>">
                    <input type="email" id="txtNewsEmail" name="txtNewsEmail" placeholder="<% response.Write traduzir("txtInputEmail") %>">
                    <button class="bt bt-fomulario"><% response.Write traduzir("txtBotaoCadastrar") %></button>
                </form>
            </li>
        </ul>
    </div>
</section>