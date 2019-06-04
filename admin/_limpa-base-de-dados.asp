<%
Dim oConexaoDel
Set oConexaoDel = New Conexao
oConexaoDel.AbreConexao() 

'Limpa cadastros que foram iniciados, e por qquer motivo não foram salvos ou foram cancelados.
'Os cadastros só são deletados quando a tela de listagem for acessada pelo mesmo usuário que criou o registro.
oConexaoDel.UpdateItem("DELETE from "&oConexaoDel.prefixoTabela&"projetos WHERE registroIncluido='n' AND userIdSession="&session("Norsal_ADM_id"))
oConexaoDel.UpdateItem("DELETE from "&oConexaoDel.prefixoTabela&"marcas WHERE registroIncluido='n' AND userIdSession="&session("Norsal_ADM_id"))
oConexaoDel.UpdateItem("DELETE from "&oConexaoDel.prefixoTabela&"produtos WHERE registroIncluido='n' AND userIdSession="&session("Norsal_ADM_id"))
set oConexaoDel.rs = nothing
%>