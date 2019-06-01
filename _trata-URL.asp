<%

Function SafeSQL(sInput)
    TempString = sInput	  
    sBadChars=array("select", "drop", ";", "--", "insert", "delete", "xp_", "#", "%", "&", "'", "(", ")", ":", ";", "<", ">", "=", "[", "]", "?", "'", "|") 
    For iCounter = 0 to uBound(sBadChars)
    TempString = replace(TempString,sBadChars(iCounter),"")
    Next
    SafeSQL = TempString
End function

urlDestino = SafeSQL(request.QueryString("destino"))
idRegistro = SafeSQL(request.QueryString("idProjeto"))

%>

<form id="frmRedirect" method="post" action="<%=urlDestino%>">

    <input type="hidden" name="id" id="id" value="<%=idRegistro%>">

</form>

<script>
    document.getElementById("frmRedirect").submit();
</script>