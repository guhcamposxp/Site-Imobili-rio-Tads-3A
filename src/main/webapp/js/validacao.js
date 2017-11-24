$(document).ready(function () {

    $.validator.addMethod("valueNotEquals", function (value, element, arg) {
        return arg != value;
    }, "Value must not equal arg.");

    $("#formularioCadastro").validate({
        // Define as regras
        rules: {
            nomeCliente: {

                required: true, minlength: 2
            },
            cpfCliente: {

                required: true,
                minlength: 11
            },
            rgCliente: {

                required: true, minlength: 8
            },
            sexoCliente: {
                valueNotEquals: "nulo"
            },
            estCivilCliente: {
                valueNotEquals: "nulo"
            },
            emailCliente: {
                required: true, minlength: 11
            },
            telFixoCliente: {
                required: true, minlength: 14
            },
            telCelCliente: {
                required: true, minlength: 15
            },
            endRuaCliente: {
                required: true, minlength: 6
            },
            endNumCliente: {
                required: true
            },
            endCepCliente: {
                required: true, minlength: 8
            },
            endCidCliente: {
                required: true, minlength: 2
            },
            endBairroCliente: {
                required: true, minlength: 3
            },
            nascimentoCliente: {
                required: true, minlength: 10
            },
            endEstCliente: {
                valueNotEquals: "nulo"
            },

        },
        // Define as mensagens de erro para cada regra
        messages: {
            nomeCliente: {
                required: "Digite o seu nome.",
                minlength: "O seu nome deve conter, no mínimo, 2 caracteres."
            },
            cpfCliente: {
                required: "Digite o seu CPF.",
                minlength: "Digite os 11 dígitos do seu CPF."
            },
            rgCliente: {
                required: "Digite o seu RG.",
                minlength: "Digite os 8 dígitos do seu RG."
            },
            sexoCliente: {
                valueNotEquals: "Por favor selecione uma opção."
            },
            estCivilCliente: {
                valueNotEquals: "Por favor selecione uma opção."
            },
            emailCliente: {
                required: "Digite o seu e-mail.",
                minlength: "Por favor, insira um e-mail válido."
            },
            nascimentoCliente: {
                required: "Digite a sua data de nascimento.",
                minlength: "Por favor, insira uma data válida."
            },
            telFixoCliente: {
                required: "Digite seu número de telefone fixo.",
                minlength: "Por favor, insira um número de telefone válido."
            },
            telCelCliente: {
                required: "Digite seu número de celular.",
                minlength: "Por favor, insira um número de celular válido."
            },
            endRuaCliente: {
                required: "Digite o nome de sua rua.",
                minlength: "Por favor, insira um nome válido."
            },
            endNumCliente: {
                required: "Digite o número de sua casa/condomínio."
            },
            endBairroCliente: {
                required: "Digite o nome de seu bairro.",
                minlength: "Por favor, insira um bairro válido."
            },
            endEstCliente: {
                valueNotEquals: "Por favor selecione uma opção."
            },
            endCepCliente: {
                required: "Digite o seu CEP.",
                minlength: "Por favor, insira um CEP válido."
            },
            endCidCliente: {
                required: "Digite a sua cidade.",
                minlength: "Por favor, insira um nome válido."
            }
        }
    });


    $("#formularioFuncionario").validate({
        // Define as regras
        rules: {
            nomeFuncionario: {

                required: true, minlength: 2
            },
            cpfFuncionario: {

                required: true,
                minlength: 11
            },
            rgFuncionario: {

                required: true, minlength: 8
            },
            sexoFuncionario: {
                valueNotEquals: "nulo"
            },
            estCivilFuncionario: {
                valueNotEquals: "nulo"
            },
            emailFuncionario: {
                required: true, minlength: 11
            },
            telFixoFuncionario: {
                required: true, minlength: 14
            },
            telCelFuncionario: {
                required: true, minlength: 15
            },
            endRuaFuncionario: {
                required: true, minlength: 6
            },
            endNumFuncionario: {
                required: true
            },
            endCepFuncionario: {
                required: true, minlength: 8
            },
            endCidFuncionario: {
                required: true, minlength: 2
            },
            endBairroFuncionario: {
                required: true, minlength: 3
            },
            nascimentoFuncionario: {
                required: true, minlength: 10
            },
            endEstFuncionario: {
                valueNotEquals: "nulo"
            },

        },
        // Define as mensagens de erro para cada regra
        messages: {
            nomeFuncionario: {
                required: "Digite o seu nome.",
                minlength: "O seu nome deve conter, no mínimo, 2 caracteres."
            },
            cpfFuncionario: {
                required: "Digite o seu CPF.",
                minlength: "Digite os 11 dígitos do seu CPF."
            },
            rgFuncionario: {
                required: "Digite o seu RG.",
                minlength: "Digite os 8 dígitos do seu RG."
            },
            sexoFuncionario: {
                valueNotEquals: "Por favor selecione uma opção."
            },
            estCivilFuncionario: {
                valueNotEquals: "Por favor selecione uma opção."
            },
            emailFuncionario: {
                required: "Digite o seu e-mail.",
                minlength: "Por favor, insira um e-mail válido."
            },
            nascimentoFuncionario: {
                required: "Digite a sua data de nascimento.",
                minlength: "Por favor, insira uma data válida."
            },
            telFixoFuncionario: {
                required: "Digite seu número de telefone fixo.",
                minlength: "Por favor, insira um número de telefone válido."
            },
            telCelFuncionario: {
                required: "Digite seu número de celular.",
                minlength: "Por favor, insira um número de celular válido."
            },
            endRuaFuncionario: {
                required: "Digite o nome de sua rua.",
                minlength: "Por favor, insira um nome válido."
            },
            endNumFuncionario: {
                required: "Digite o número de sua casa/condomínio."
            },
            endBairroFuncionario: {
                required: "Digite o nome de seu bairro.",
                minlength: "Por favor, insira um bairro válido."
            },
            endEstFuncionario: {
                valueNotEquals: "Por favor selecione uma opção."
            },
            endCepFuncionario: {
                required: "Digite o seu CEP.",
                minlength: "Por favor, insira um CEP válido."
            },
            endCidFuncionario: {
                required: "Digite a sua cidade.",
                minlength: "Por favor, insira um nome válido."
            }
        }
    });
    
    $("#formularioImovel").validate({
        // Define as regras
        rules: {
            endRuaImovel: {
                required: true, minlength: 6
            },
            endNumImovel: {
                required: true
            },
            endCepImovel: {
                required: true, minlength: 8
            },
            endCidImovel: {
                required: true, minlength: 2
            },
            endBairroImovel: {
                required: true, minlength: 3
            },
            endEstImovel: {
                valueNotEquals: "nulo"
            },
            areaImovel: {
                required: true, minlength: 2
            },
            quartosImovel: {
                required: true
            },
            suitesImovel: {
                required: true
            },
            cozinhasImovel: {
                required: true
            },
            salasComumImovel: {
                required: true
            },
            salasJantarImovel: {
                required: true
            },
            banheirosImovel: {
                required: true
            },
            vagasImovel: {
                required: true
            },
            valorVendaImovel: {
                required: true
            },
            valorAluguelImovel: {
                required: true
            },
            tipoImovel: {
                valueNotEquals: "nulo"
            },
            descricaoImovel: {
                required: true
            }

        },
        // Define as mensagens de erro para cada regra
        messages: {
            endRuaImovel: {
                required: "Digite o nome da rua.",
                minlength: "Por favor, insira um nome válido."
            },
            endNumImovel: {
                required: "Digite o número do imóvel."
            },
            endBairroImovel: {
                required: "Digite o nome do bairro.",
                minlength: "Por favor, insira um bairro válido."
            },
            endEstImovel: {
                valueNotEquals: "Por favor selecione uma opção."
            },
            endCepImovel: {
                required: "Digite o CEP.",
                minlength: "Por favor, insira um CEP válido."
            },
            endCidImovel: {
                required: "Digite a cidade.",
                minlength: "Por favor, insira um nome válido."
            },
            areaImovel: {
                required: "Digite a área.",
                minlength: "Por favor, insira valor válido."
            },
            quartosImovel: {
                required: "Digite a quantidade de quartos."
            },
            suitesImovel: {
                required: "Digite a quantidade de suítes."
            },
            cozinhasImovel: {
                required: "Digite a quantidade de cozinhas."
            },
            salasComumImovel: {
                required: "Digite a quantidade de salas."
            },
            salasJantarImovel: {
                required: "Digite a quantidade de salas de jantar."
            },
            banheirosImovel: {
                required: "Digite a quantidade de banheiros."
            },
            vagasImovel: {
                required: "Digite a quantidade de vagas."
            },
            valorVendaImovel: {
                required: "Digite o valor de venda."
            },
            valorAluguelImovel: {
                required: "Digite o valor do aluguel."
            },
            tipoImovel: {
                valueNotEquals: "Por favor selecione uma opção."
            },
            descricaoImovel: {
                required: "Digite a descrição do imóvel."
            }
            
        }
    });
    
    $("#formularioFilial").validate({
        // Define as regras
        rules: {
            
            endRuaFilial: {
                required: true, minlength: 6
            },
            endNumFilial: {
                required: true
            },
            endCepFilial: {
                required: true, minlength: 8
            },
            endCidFilial: {
                required: true, minlength: 2
            },
            endBairroFilial: {
                required: true, minlength: 3
            },
            endEstFilial: {
                valueNotEquals: "nulo"
            },
            nomeFilial: {
                required: true, minlength: 3
            },
            cnpjFilial: {
                required: true, minlength: 18
            }
            
        },
        // Define as mensagens de erro para cada regra
        messages: {
            endRuaFilial: {
                required: "Digite o nome da rua.",
                minlength: "Por favor, insira um nome válido."
            },
            endNumFilial: {
                required: "Digite o número da filial."
            },
            endBairroFilial: {
                required: "Digite o nome do bairro.",
                minlength: "Por favor, insira um bairro válido."
            },
            endEstFilial: {
                valueNotEquals: "Por favor selecione uma opção."
            },
            endCepFilial: {
                required: "Digite o CEP.",
                minlength: "Por favor, insira um CEP válido."
            },
            endCidFilial: {
                required: "Digite a cidade.",
                minlength: "Por favor, insira um nome válido."
            },
            cnpjFilial: {
                required: "Digite o CNPJ.",
                minlength: "Por favor, insira um CNPJ válido."
            }
        }
    });
    
    $("#realizaVenda").validate({
        // Define as regras
        rules: {
            
            idImovel: {
                required: true
            },
            cpfComprador: {
                required: true
            }
        },
        // Define as mensagens de erro para cada regra
        messages: {
            idImovel: {
                required: "Digite o ID do imóvel.",
            },
            cpfComprador: {
                required: "Digite o CPF do comprador."
            }
        }
    });
});
