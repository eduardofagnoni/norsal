<%
Function SafeSQL(sInput)
    TempString = sInput
    'sBadChars=array("select", "drop", ";", "--", "insert", "delete", "xp_", "#", "%", "&", "'", "(", ")", "/", "\", ":", ";", "<", ">", "=", "[", "]", "?", "`", "|") 
    sBadChars=array("select", "drop", ";", "--", "insert", "delete", "xp_", "#", "%", "&", "'", "(", ")", ":", ";", "<", ">", "=", "[", "]", "'", "|") 
    For iCounter = 0 to uBound(sBadChars)
    TempString = replace(TempString,sBadChars(iCounter),"")
    Next
    SafeSQL = TempString
End function


linguagem = SafeSQL(request.form("lang"))
nomedapagina = SafeSQL(request.form("nomeDaPagina"))
idRecuperadoNoFormulario = SafeSQL(request.form("idRecForm"))

idSegmento = SafeSQL(request.form("idSegmento"))
idMarca = SafeSQL(request.form("idMarca"))



if linguagem<>"" then
session("linguagem") = linguagem
else
session("linguagem") = "ptBr"
end if


'verifica se o link possui parâmetro ID e faz a atribuição de for o caso.
if idRecuperadoNoFormulario<>"" then
    response.redirect("../"&nomedapagina&"?id="&idRecuperadoNoFormulario)
elseif idSegmento<>"" then
    response.redirect("../"&nomedapagina&"?idSegmento="&idSegmento&"&idMarca="&idMarca)
else
    response.redirect("../"&nomedapagina)
end if
%>