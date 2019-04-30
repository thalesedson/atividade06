
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Formulario</title>
        
        <link href="css/estilo.css" rel="stylesheet" type="text/css"/>
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <script src="js/jquery-3.3.1.min.js" type="text/javascript"></script>
        <script src="js/bootstrap.min.js" type="text/javascript"></script>
        <script src="js/jquery.validate.min.js" type="text/javascript"></script>		
        <script src="js/additional-methods.min.js" type="text/javascript"></script>		
        <script src="js/jquery.mask.min.js" type="text/javascript"></script>
        <script src="js/messages_pt_BR.js" type="text/javascript"></script> 
         <script type="text/javascript">
             
jQuery.validator.addMethod("anoAntigo",
            function(value,element){
                var data = value.split("/")
                var ano = parseInt(data[2]) //terceira posição da data
                var dataAtual = new Date()
                var anoAtual = dataAtual.getFullYear()
                if (ano < anoAtual){
                    return true
                }else{
                    return false
                }
            },"Ano tem que ser antigo")
            $(document).ready(function () {
                $("#telefone").mask("(00)0000-0000")
                 $("#datanacimento").mask("00/00/0000")
                $("#cpf").mask("000.000.000-00")
                $("#formCadastro").validate({
                    rules: {
                        datanacimento: {
                            dateITA: true,
                            required: true,
                            anoAntigo: true
                        },
                        nome: {
                            required: true,
                            maxlength: 100,
                            minlength: 10,
                            minWords: 2
                        },
                       telefone: {
                            required: true,
                            telefone: true
                        },
                       
                        cpf:{
                            required: true,
                             cpfBR: true,
                            
                        }
                        
                    },
                   messages:{
                       nome:
                               {
                                   required:"Nome completo por favor."
                               },
                      telefone:
                               {
                                   required:"telefone não é valido."
                               },
                               cpf:{
                            required: "Adicione um CPF valido"
                               
                        },
                        datanacimento:{
                             required: "É obrigatorio adicionar a data de nacimento"
                        },
                        
                       
                   }
                    
                })
            })
        </script>
    </head>
    <body>
        
        <h1>Cadastro</h1>
        <div class="container"> 
        <form name="formulario" id="formulario"
              method="post" action="menssagem.jsp">

                <div class="row">
                    <label>Nome</label>
                    <input type="text" name="nome" id="nome" style= "width:75%" placeholder="Nome" class="form-control"/>
                </div>
                <div class="row">
                    <label>Telefone</label>
                    <input type="tex" name="telefone" id="telefone" placeholder=(00)0000-0000 style= "width:30%" class="form-control"/>
                </div>	
                <div class="row">
                    <label>CPF</label>
                    <input type="text" name="cpf" id="cpf" style= "width:30%" placeholder="000.000.000-00" class="form-control"/>
                </div>
                <div class="row">
                    <label>Data de nacimento</label>
                    <input type="text" name="datanacimento" style= "width:30%" placeholder="00/00/0000 "id="datanacimento" class="form-control"/>
                </div>
               
                <div class="row">
                   <input type="submit" name="enviar" style= "width:30%" id="enviar"  class="btn btn-primary form-control">
	</div>
            </form>
        </div>
    </body>
</html>
