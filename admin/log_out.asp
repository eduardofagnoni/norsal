<%@LANGUAGE="VBSCRIPT"%>
<!-- #include file="_classes/__cl__conexao.asp" -->

<%
Dim oConexaoEdit
Set oConexaoEdit = New Conexao
oConexaoEdit.AbreConexao()
'muda status do usuário para offline
if session("Norsal_ADM_id")<>"" then
    oConexaoEdit.UpdateItem("UPDATE "&oConexaoEdit.prefixoTabela&"usuarios SET online='n' WHERE id="&session("Norsal_ADM_id"))
end if

Session.Abandon()
response.redirect("default.asp")

%>