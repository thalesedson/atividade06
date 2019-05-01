<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Menssagem</title>
        
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="css/estilo.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
     <% 
              String nome = request.getParameter("nome");
               String telefone = request.getParameter("telefone");
                String datanacimento = request.getParameter("datanacimento");
                 String cpf = request.getParameter("cpf");
                  %>
                  <div class="container"><h3><%=nome%></h3><p><h4><%=nome%> nasceu em <%=datanacimento%> e possui o CPF <%=cpf%></h4> </div>
                 
              
                  
                  
                  
              
            
            
    </body>
</html>
