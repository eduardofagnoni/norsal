<%@LANGUAGE="VBSCRIPT"%>
<!-- #include file="_classes/__cl__conexao.asp" -->
<%
Dim oValida
Set oValida = New ValidaSessao
oValida.validaPagina("Norsal_ADM_logado")

Dim oComContaItens
Set oComContaItens = New Conexao
oComContaItens.AbreConexao()

Dim oUsuario
Set oUsuario = New Conexao
oUsuario.AbreConexao()
oUsuario.AbreTabela("select id,nome,dataCadastro from "&oUsuario.prefixoTabela&"usuarios where id="&session("Norsal_ADM_id")&" limit 1 ")

nomeDoUsuario = oUsuario.rs("nome")
dataCadastro = oUsuario.rs("dataCadastro")

%>
<!DOCTYPE html>
<html lang="pt-BR">
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<title></title>		
		<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
		<link rel="stylesheet" href="bower_components/bootstrap/dist/css/bootstrap.min.css">		
		<link rel="stylesheet" href="bower_components/font-awesome/css/font-awesome.min.css">
		
		<!-- Theme style -->
		<link rel="stylesheet" href="dist/css/AdminLTE.css">		
		<link rel="stylesheet" href="dist/css/skins/skin-blue.css">

		
		<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
		<!--[if lt IE 9]>
		<script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
		<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
		<![endif]-->

		<!-- Google Font -->
		<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
	</head>

<body class="hold-transition skin-blue sidebar-mini fixed">
    <div class="wrapper">

        <!-- Main Header -->
        <!--#include file="_header.asp"-->

        <!-- Left side column. contains the logo and sidebar -->
        <!--#include file="_menu.asp" -->

        
        <div class="content-wrapper">
            
            <section class="content-header">
                <h1>Dashboard Norsal <small></small></h1>
                <!--
                <ol class="breadcrumb">
                    <li><a href="#"><i class="fa fa-dashboard"></i> Nível</a></li>
                    <li class="active">Aqui</li>
                </ol>
                -->
            </section>
            
            <section class="content container-fluid">

                <div class="row">
                    <div class="col-lg-3 col-xs-6">                    
                        <div class="small-box bg-aqua">
                            <div class="inner">
                            <%
                            oComContaItens.ContaItem("SELECT COUNT(id) FROM "&oComContaItens.prefixoTabela&"produtos WHERE ativo='s' and regTerminado='s'")
                            totalProdutos = oComContaItens.resultadoContaItem

                            response.write("<h3>"&totalProdutos&"</h3>")
                            %>
                            <p>Quantidade de produtos</p>
                            </div>
                            <div class="icon">
                            <i class="ion ion-bag"></i>
                            </div>
                            <a href="lista-produtos.asp" class="small-box-footer">Mais informações <i class="fa fa-arrow-circle-right"></i></a>
                        </div>
                    </div>

                    <div class="col-lg-3 col-xs-6">                    
                        <div class="small-box bg-green">
                            <div class="inner">
                            <%
                            oComContaItens.ContaItem("SELECT COUNT(id) FROM "&oComContaItens.prefixoTabela&"projetos WHERE ativo='s' and regTerminado='s'")
                            totalProjetos = oComContaItens.resultadoContaItem

                            response.write("<h3>"&totalProjetos&"</h3>")
                            %>
                            <p>Quantidade de projetos</p>
                            </div>
                            <div class="icon">
                            <i class="ion ion-bag"></i>
                            </div>
                            <a href="lista-projetos.asp" class="small-box-footer">Mais informações <i class="fa fa-arrow-circle-right"></i></a>
                        </div>
                    </div>

                    <div class="col-lg-3 col-xs-6">                    
                        <div class="small-box bg-yellow">
                            <div class="inner">
                            <%
                            oComContaItens.ContaItem("SELECT COUNT(id) FROM "&oComContaItens.prefixoTabela&"novidades WHERE ativo='s' and regTerminado='s'")
                            totalNovidades = oComContaItens.resultadoContaItem

                            response.write("<h3>"&totalNovidades&"</h3>")
                            %>
                            <p>Quantidade de notícias</p>
                            </div>
                            <div class="icon">
                            <i class="ion ion-bag"></i>
                            </div>
                            <a href="lista-novidades.asp" class="small-box-footer">Mais informações <i class="fa fa-arrow-circle-right"></i></a>
                        </div>
                    </div>

                    <div class="col-lg-3 col-xs-6">                    
                        <div class="small-box bg-red">
                            <div class="inner">
                            <%
                            oComContaItens.ContaItem("SELECT COUNT(id) FROM "&oComContaItens.prefixoTabela&"galeriadeimagensnome WHERE ativo='s'")
                            totalGalerias = oComContaItens.resultadoContaItem

                            response.write("<h3>"&totalGalerias&"</h3>")
                            %>
                            <p>Quantidade de galerias</p>
                            </div>
                            <div class="icon">
                            <i class="ion ion-bag"></i>
                            </div>
                            <a href="lista-galeria-imagens.asp" class="small-box-footer">Mais informações <i class="fa fa-arrow-circle-right"></i></a>
                        </div>
                    </div>                   
                    
                </div>


                <!--
                <div class="row">
                    <div class="col-xs-12">
                        <p class="text-center">
                        <strong>Escrever o período que está sendo mostrado</strong>
                        </p>

                        <div class="chart">                        
                            <canvas id="salesChart" style="height: 180px;"></canvas>
                        </div>                        
                    </div>
                </div>
                -->


            </section>
            
        </div>
        


        <!-- Main Footer -->
        <!--#include file="_footer.asp"-->

        <!-- Control Sidebar -->
        <!--#include file="_sidebar.asp"-->




        <!-- Add the sidebar's background. This div must be placed
        immediately after the control sidebar -->
        <div class="control-sidebar-bg"></div>
    </div>
    <!-- ./wrapper -->



<!-- jQuery 3 -->
<script src="bower_components/jquery/dist/jquery.min.js"></script>
<!-- Bootstrap 3.3.7 -->
<script src="bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
<!-- AdminLTE App -->
<script src="dist/js/adminlte.min.js"></script>

<!-- SlimScroll -->
<script src="bower_components/jquery-slimscroll/jquery.slimscroll.min.js"></script>
<!-- FastClick -->
<script src="bower_components/fastclick/lib/fastclick.js"></script>

<!-- ChartJS -->
<!-- <script src="bower_components/chart.js/Chart.js"></script> -->
<!-- gráfico -->
<!-- <script src="dashboard.js"></script> -->


</body>
</html>