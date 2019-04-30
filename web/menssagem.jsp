<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Menssagem</title>
          
    </head>
    <body>
     <% 
              String nome = request.getParameter("nome");
               String telefone = request.getParameter("telefone");
                String datanacimento = request.getParameter("datanacimento");
                 String cpf = request.getParameter("cpf");
                  %>
                  <%=nome%> nasceu em <%=datanacimento%> e possui o CPF <%=cpf%>
              
                  
                  
                  
              
            
            
    </body>
</html>
