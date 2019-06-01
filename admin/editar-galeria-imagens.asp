<%@LANGUAGE="VBSCRIPT"%>
<!-- #include file="_classes/__cl__conexao.asp" -->
<%
Dim oValida
Set oValida = New ValidaSessao
oValida.validaPagina("Norsal_ADM_logado")

Dim oConexaoEdit
Set oConexaoEdit = New Conexao
oConexaoEdit.AbreConexao() 

Dim oConexaoListas
Set oConexaoListas = New Conexao
oConexaoListas.AbreConexao() 

Dim oUsuario
Set oUsuario = New Conexao
oUsuario.AbreConexao()
oUsuario.AbreTabela("select id,nome,dataCadastro from "&oUsuario.prefixoTabela&"usuarios where id="&session("Norsal_ADM_id")&" limit 1 ")

nomeDoUsuario = oUsuario.rs("nome")
dataCadastro = oUsuario.rs("dataCadastro")

Function SafeSQL(sInput)
    TempString = sInput	  
    sBadChars=array("select", "drop", ";", "--", "insert", "delete", "xp_", "#", "%", "&", "'", "(", ")", ":", ";", "<", ">", "=", "[", "]", "?", "'", "|") 
    For iCounter = 0 to uBound(sBadChars)
    TempString = replace(TempString,sBadChars(iCounter),"")
    Next
    SafeSQL = TempString
End function

id   = SafeSQL(request.querystring("id"))

datasys = now()
ipCapturado = Request.ServerVariables("remote_addr")
dominioAcessado = Request.ServerVariables("server_name")
portaUtilizada = Request.ServerVariables("server_port")
metodoParaChamarAPagina = Request.ServerVariables("request_method")
cadastro_dados_iniciais = datasys&" - IP:"&ipCapturado&":"&portaUtilizada&" - Dom. Acesso:"&dominioAcessado&" - Metodo:"&metodoParaChamarAPagina
ultima_alteracao = cadastro_dados_iniciais

oConexaoEdit.AbreTabela("SELECT id,nome from "&oConexaoEdit.prefixoTabela&"galeriadeimagensnome where id="&id) 

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

        <!-- Custom Theme Style -->        
        <link rel="stylesheet" href="stylesheet/styles.css"> 

        <!-- cropper Style -->  
        <link rel="stylesheet" href="cropper/cropper.min.css">
    	<link rel="stylesheet" href="dropzone/dropzone.css">
	</head>

<body class="hold-transition skin-blue sidebar-mini fixed">
    <div class="wrapper">

        <!-- Main Header -->
        <!--#include file="_header.asp"-->

        <!-- Left side column. contains the logo and sidebar -->
        <!--#include file="_menu.asp" -->

        
        <div class="content-wrapper">
            
            <section class="content-header">
                <h1>Editando Galeria de Imagens <small></small></h1>
                <ol class="breadcrumb">
                    <li><a href="admin.asp"><i class="fa fa-home"></i> Home</a></li>
                    <li><a href="lista-galeria-imagens.asp"><i class="fa fa-list"></i> Lista de Galerias de Imagens</a></li>
                    <li class="active">Editando Galeria de Imagens</li>
                </ol>
            </section>
            
            <section class="content container-fluid">

                <div class="box">
                    <div class="box-header">
                        <h3 class="box-title">Galerias</h3>
                    </div>
                    
                    <div class="box-body">
                        <form class="form-horizontal form-label-left input_mask" method="post" action="gravar-galeria-imagens.asp">

                            <div class="row">                
                                <div class="col-xs-12">
                                    <div class="form-group">
                                        <label class="sr-only" for="txtNome">Nome da galeria</label>
                                        <input type="text" class="form-control campoNome" id="txtNome" name="txtNome" placeholder="Nome da galeria" value="<%=oConexaoEdit.rs("nome")%>" required>
                                    </div>
                                </div>
                            </div> 
                                    
                            <div class="form-group" style="float:right">
                                <button type="button" class="btnExtBt btTransparent" onclick="javascript:abreConteudosInterno('admin.asp')">
                                    <div class="bg"><img src="../images/btGeralBr.png" alt=""></div>
                                    Cancelar
                                </button>

                                <button type="submit" class="btnExtBt btAzul">
                                    <div class="bg2"><img src="../images/btGeralBr.png" alt=""></div>
                                    Salvar
                                </button>
                            </div>
                            <div class="clearfix"></div>
                                
                        </form> 


                        <button type="button" class="btnExtBt btAzul" data-toggle="modal" data-target="#myModalGaleriaDeImagens">
                            <div class="bg3"><img src="../images/btGeralBr.png" alt=""></div>
                            Incluir fotos na galeria
                        </button>  


                        <ul class="tits">
                            <li>
                                <h3>Fotos da Galeria</h3>
                            </li>
                            <li>
                                <p class="bold" style="padding: 35px 0 0 0; top:-20px;"><br></p>
                            </li>           
                        </ul>



                        <%
                        oConexaoListas.AbreTabela("select * from "&oConexaoListas.prefixoTabela&"galeriadeimagensarquivo where ativo='s' and idGaleria="&id&" order by id desc")
                        while not oConexaoListas.rs.eof
                        %>
                            <div style="float:left; margin:0 3px 5px 0; min-height:230px">
                                <img src="<%=oConexaoListas.enderecoGalerias%><%=oConexaoListas.rs("arquivo")%>" alt="" class="" style="width:200px;"><br>
                                <p><a href="deleta-fotos-galeria-imagens.asp?idArquivo=<%=oConexaoListas.rs("id")%>&id=<%=id%>">Excluir</a><br>
                                Galeria: <%=id%> - Foto: <%=oConexaoListas.rs("id")%></p>
                            </div>
                            
                        
                        <%
                        oConexaoListas.rs.MoveNext()
                        wend                                    
                        'set oConexaoListas.rs = nothing
                        %>


                    </div>
                </div>

            </section>
            
        </div>
        




        <!-- Modal Foto para as galerias de imagens -->
        <div id="myModalGaleriaDeImagens" class="modal fade bs-example-modal-sm" data-backdrop="static" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog">
            <div class="modal-content">

                <div class="modal-header">            
                <h4 class="modal-title" id="myModalLabel2">Fotos para galeria</h4>
                <p>É possível fazer upload de até 10 imagens por vêz.</p>
                </div>
                <div class="modal-body">

                        <div class="profile_img">
                            <div id="crop-avatar">
                                <!-- Current avatar -->                          
                                <!-- --comentando o icone de foto <img width="220px" src="images/user.jpg" alt="" class="img-responsive avatar-view" style="margin:0 auto;">
                                <br> -->
                                <form action="gravar-fotos-galeria-imagens.asp?id=<%=oConexaoEdit.rs("id")%>" class="dropzone" id="my-dropzone-container-fotoGaleriaDeImagens" method="post" enctype="multipart/form-data">
                                    <div class="fallback">
                                        <input name="file" type="file">
                                        <input type="hidden" name="idUser" value="<%=oConexaoEdit.rs("id") %>">
                                    </div>
                                </form>
                            </div>
                        </div>

                </div>
                <div class="modal-footer">            
                    <button type="button" class="btnExtBt btAzul" data-dismiss="modal" onclick="location.href='editar-galeria-imagens.asp?id=<%=oConexaoEdit.rs("id")%>'">
                        <div class="bg2"><img src="images/btGeralBr.png" alt=""></div>
                        Fechar e Atualizar
                    </button>        
                </div>
            </div>
            </div>
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


<!-- SlimScroll -->
<script src="bower_components/jquery-slimscroll/jquery.slimscroll.min.js"></script>
<!-- FastClick -->
<script src="bower_components/fastclick/lib/fastclick.js"></script>

<!-- AdminLTE App -->
<script src="dist/js/adminlte.min.js"></script>


<!-- Botoneira -->
<script src="dist/js/botoneira.js"></script>

<!-- Cropper -->
<script src="cropper/cropper.min.js"></script>
<script src="dropzone/dropzone.js"></script>
<script src="main.js"></script>	


</body>
</html>