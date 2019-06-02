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

Dim oListaGaleriaImagens
Set oListaGaleriaImagens = New Conexao
oListaGaleriaImagens.AbreConexao()
oListaGaleriaImagens.AbreTabela("select id,nome from "&oListaGaleriaImagens.prefixoTabela&"galeriadeimagensnome where ativo='s' order by nome asc")

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
        <!-- DataTables -->
        <link rel="stylesheet" href="bower_components/datatables.net-bs/css/dataTables.bootstrap.min.css">
		
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
                <h1>Lista de Galerias de Imagens <small></small></h1>
                <ol class="breadcrumb">
                    <li><a href="admin.asp"><i class="fa fa-home"></i> Home</a></li>
                    <li class="active">Lista de Galerias de Imagens</li>
                </ol>
            </section>
            
            <section class="content container-fluid">

                <div class="box">
                    <div class="box-header">
                        <h3 class="box-title">Galerias</h3>

                        <div style="float:right;">
                            <a href="add-galeria-imagens.asp" class="btnExtBt btAzul" style="display:block">                                    
                                <div class="bg2"><img src="images/btGeralBr.png" alt=""></div>
                                Incluir nova
                            </a>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                    
                    <div class="box-body">
                        <table id="example1" class="table table-bordered table-striped">
                            <thead>
                                <tr>
                                    <th width="290">Galeria</th>
                                    <th>Informações</th>
                                    <th width="90">Controles</th>
                                </tr>
                            </thead>
                            <tbody>
                                <%
                                while not oListaGaleriaImagens.rs.eof 
                                    oComContaItens.ContaItem("SELECT COUNT(*) FROM "&oComContaItens.prefixoTabela&"galeriadeimagensarquivo WHERE ativo='s' and idGaleria="&oListaGaleriaImagens.rs("id")&" ")
                                    totalDeFotos = oComContaItens.resultadoContaItem
                                %>
                                <tr>
                                    <td><iframe frameborder="0" height="180" style="background:transparent;" scrolling="no" src="../_embedGaleria.asp?id=<%=oListaGaleriaImagens.rs("id")%>" width="280"></iframe></td>
                                    <td>
                                        <strong>Nome: </strong><%=oListaGaleriaImagens.rs("nome")%><br>
                                        <strong>Utilizador: </strong>_embedGaleria.asp?id=<%=oListaGaleriaImagens.rs("id")%><br>
                                        <strong>Slides: </strong><%=totalDeFotos%>
                                    </td>
                                    <td>
                                        <ul style="margin:0; padding:0; list-style:none;">
                                            <li style="margin-bottom:10px;"><a href="editar-galeria-imagens.asp?id=<%=oListaGaleriaImagens.rs("id")%>" class="btn btn-block btn-primary">Editar</a></li>
                                            <!--<li style="margin-bottom:10px;"><a href="" class="btn btn-block btn-warning">Desabilitar</a></li>-->
                                        </ul>
                                    </td>
                                </tr>
                                <%
                                oListaGaleriaImagens.rs.MoveNext()
                                wend
                                oListaGaleriaImagens.rs.Close()
                                set oListaGaleriaImagens.rs = nothing
                                %>                       
                            </tbody>                        
                        </table>
                    </div>
                    
                </div>

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

<!-- DataTables -->
<script src="bower_components/datatables.net/js/jquery.dataTables.min.js"></script>
<script src="bower_components/datatables.net-bs/js/dataTables.bootstrap.min.js"></script>
<!-- SlimScroll -->
<script src="bower_components/jquery-slimscroll/jquery.slimscroll.min.js"></script>
<!-- FastClick -->
<script src="bower_components/fastclick/lib/fastclick.js"></script>

<!-- AdminLTE App -->
<script src="dist/js/adminlte.min.js"></script>

<!-- page script -->
<script>
  $(function () {
    $('#example1').DataTable()
    
  })
</script>



<!-- #include file="_mensagens_do_sistema.asp" -->

</body>
</html>