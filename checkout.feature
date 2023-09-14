            #language: pt

            Funcionalidade: Tela de cadastro - Checkout
            Como cliente da EBAC-SHOP
            Quero fazer e concluir meu cadastro
            Para finalizar minha compra

            Contexto:
            Dado que eu acesse a página de compras da EBAC SHOP

            Esquema do Cénario: Deve ser cadastrado com todos os dados obrigatórios, marcado com asteriscos
            Dado que estou na página de cadastro da EBAC-SHOP
            Quando eu preencho todos os campos marcado com asteriscos de forma correta
            E clico no botão "Concluir Cadastro"
            Então devo receber uma mensagem: "Cadastro efetuado com sucesso"

            Exemplos:
            | Campo               | Valor           |
            | Nome*               | Luis da Silva   |
            | País*               | Brasil          |
            | Endereço*           | Rua XXZ, 567    |
            | Cidade*             | São Paulo       |
            | CEP*                | 12345-678       |
            | Telefone*           | 11923456789     |
            | Endereço de e-mail* | luis2@gmail.com |


            Esquema do Cénario: Não deve permitir campo e-mail com formato inválido. Sistema deve inserir uma mensagem de erro
            Dado que estou na página de cadastro da EBAC-SHOP
            Quando digito o e-mail em formato inválido
            E clico no botão "Concluir Cadastro"
            Então devo receber um alerta informando: "formato do e-mail é inválido"

            Exemplos:
            | Campo               | Valor           |
            | Nome*               | Luis da Silva   |
            | País*               | Brasil          |
            | Endereço*           | Rua 15, 567     |
            | Cidade*             | Rio de Janeiro  |
            | CEP*                | 98536-169       |
            | Telefone*           | 11923456789     |
            | Endereço de e-mail* | luis2.com       |

            Cénario: Ao tentar cadastrar com campos vazios, deve exibir mensagem de alerta
            Dado que estou na página de cadastro da EBAC-SHOP
            E não preencho nenhum dos campos obrigatórios
            Quando clico no botão "Concluir Cadastro"
            Então o sistema deve exibir uma mensagem de alerta: "Obrigatório preencher os campos*"



