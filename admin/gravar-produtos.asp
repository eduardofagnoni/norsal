<%@LANGUAGE="VBSCRIPT"%>
<!-- #include file="_classes/__cl__conexao.asp" -->
<%
Dim oValida
Set oValida = New ValidaSessao
oValida.validaPagina("Norsal_ADM_logado")

Dim oConexaoAdd
Set oConexaoAdd = New Conexao
oConexaoAdd.AbreConexao()

Function SafeSQL(sInput)
    TempString = sInput	  
    sBadChars=array("select", "drop", ";", "--", "insert", "delete", "xp_", "#", "%", "&", "'", "(", ")", ":", ";", "<", ">", "=", "[", "]", "?", "'", "|") 
    For iCounter = 0 to uBound(sBadChars)
    TempString = replace(TempString,sBadChars(iCounter),"")
    Next
    SafeSQL = TempString
End function

Function SafeSQL_HTML(sInput)
    TempString = sInput	  
    sBadChars=array("select", "drop", "--", "insert", "delete", "xp_", "|") 
    For iCounter = 0 to uBound(sBadChars)
    TempString = replace(TempString,sBadChars(iCounter),"")
    Next
    SafeSQL_HTML = TempString
End function

datasys = now()
ipCapturado = Request.ServerVariables("remote_addr")
dominioAcessado = Request.ServerVariables("server_name")
portaUtilizada = Request.ServerVariables("server_port")
metodoParaChamarAPagina = Request.ServerVariables("request_method")
cadastro_dados_iniciais = datasys&" - IP:"&ipCapturado&":"&portaUtilizada&" - Dom. Acesso:"&dominioAcessado&" - Metodo:"&metodoParaChamarAPagina
ultima_alteracao = cadastro_dados_iniciais

'varíaveis do formulário
varSegmento = SafeSQL(request.form("txtSegmento"))
varMarca = SafeSQL(request.form("txtMarca"))
varNome = SafeSQL_HTML(request.form("txtNome"))
varNomeEng = SafeSQL_HTML(request.form("txtNome_eng"))
varResumo = SafeSQL_HTML(request.form("txtResumo"))
varResumoEng = SafeSQL_HTML(request.form("txtResumo_eng"))
varEmbalagem = SafeSQL_HTML(request.form("txtEmbalagem"))
varEmbalagemEng = SafeSQL_HTML(request.form("txtEmbalagem_eng"))
varRegistroIncluido = "s"
varRegistroTerminado = "s"
varIdProjeto = SafeSQL(request.form("idProjeto"))

' preparando a data para gravacao
varDataProjeto = Date()
if varDataProjeto<>"" then
    varDataProjeto = replace(varDataProjeto,"/",".")
    varDataProjeto = replace(varDataProjeto,"-",".")
    varDataProjeto = split(varDataProjeto,".")
    dia=varDataProjeto(0)
    mes=varDataProjeto(1)
    ano=varDataProjeto(2)
    varDataProjeto = ano+"-"+mes+"-"+dia
end if


oConexaoAdd.UpdateItem("UPDATE "&oConexaoAdd.prefixoTabela&"produtos SET idSegmento='"&varSegmento&"',idMarca='"&varMarca&"',nome='"&varNome&"',nome_eng='"&varNomeEng&"',resumo='"&varResumo&"',resumo_eng='"&varResumoEng&"',embalagem='"&varEmbalagem&"',embalagem_eng='"&varEmbalagemEng&"',data='"&varDataProjeto&"',registroIncluido='"&varRegistroIncluido&"',regTerminado='"&varRegistroTerminado&"',ultimaAlteracao='"&ultima_alteracao&"' WHERE id="&varIdProjeto)

response.redirect("lista-produtos.asp?msg_sys=42")
%>