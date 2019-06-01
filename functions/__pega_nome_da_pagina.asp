<%
'pegando o nome da página
caminho = request.ServerVariables("SCRIPT_NAME") 
For i = 1 to len(caminho)   
if inStr(1,right(caminho,i),"/") = 0 then       
nomepagina = (right(caminho,i))   
else       
exit for   
end if 
next 
%>