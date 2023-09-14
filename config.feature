            #language: pt

            Funcionalidade: Configurar produto
            Como cliente da EBAC-SHOP
            Quero configurar meu produto de acordo com meu tamanho e gosto
            E escolher a quantidade
            Para depois inserir no carrinho

            Contexto:
            Dado que eu acesse a página de compras da EBAC SHOP

            Cénario: Seleções de cor, tamanho e quantidade devem ser obrigatórios
            Dado que estou na página de um produto na EBAC-SHOP
            Quando eu escolho a cor "Verde"
            E eu seleciono o tamanho "P"
            E eu insiro a quantidade "3"
            E eu clico no botão "Adicionar ao carrinho"
            Então o produto deve ser adicionado ao meu carrinho

            Esquema do Cénario: Deve permitir apenas 10 produtos por venda
            Dado que estou na página de um produto na EBAC-SHOP
            Quando eu escolho a cor "Amarelo"
            E eu seleciono o tamanho "M"
            E eu insiro a quantidade "11
            E eu clico no botão "Adicionar ao carrinho"
            Então devo ver uma mensagem de erro informando que excedi o limite de produtos

            Exemplos:
            | cor        | Amarelo
            | tamanho    | M
            | quantidade | 11

            Cénario: Quando eu clicar no botão “limpar” deve voltar ao estado original
            Dado que estou na página de um produto na EBAC-SHOP
            Quando eu escolho a cor "Azul"
            E eu seleciono o tamanho "G"
            E eu insiro a quantidade "4"
            E eu clico no botão "Limpar"
            Então as seleções de cor, tamanho e quantidade devem voltar ao estado original

