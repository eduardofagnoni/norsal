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

if linguagem<>"" then
session("linguagem") = linguagem
else
session("linguagem") = "ptBr"
end if

response.redirect("../"&nomedapagina)
%>