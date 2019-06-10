<section class="fale-com-a-gente">
    <div class="container scrollme animateme"
        data-when="span"
        data-from="0.4"
        data-to="0"
        data-easing="easeinout"
        data-opacity="0"
        data-translatey="60"
    >
        <ul>
            <li>
                <header><% response.Write traduzir("txtTitFaleComAGente") %></header>
                <p><% response.Write traduzir("txtApoioFaleComAGente") %></p>
            </li>
            <li>
                <form id="frm-fale-com-a-gente" action="fale-conosco.asp" method="post">
                    <button class="bt bt-branco"><% response.Write traduzir("txtBotaoCliqueEFaleComAGente") %></button>
                </form>
            </li>
        </ul>            
    </div>
</section>