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
        