#language: pt

Funcionalidade: Login na plataforma
Como cliente da EBAC-SHOP
Quero fazer o login (autenticação) na plataforma  
Para visualizar meus pedidos

Contexto:
Dado que estou na página de login da EBAC-SHOP
Quando eu insiro meu nome de usuário válido e minha senha válida
E clico no botão de login
Então devo ser direcionado para a tela de checkout

Cénario: Ao inserir um dos campos inválidos deve exibir uma mensagem de alerta “Usuário ou senha inválidos”
Dado que estou na página de login da EBAC-SHOP
Quando eu insiro um nome de usuário ou senha inválidos
E clico no botão de login
Então devo ver uma mensagem de alerta "Usuário ou senha inválidos"


