#language: pt

Funcionalidade: Realizar login

@Bruno
Cenário: Realizar login e logout no site
  Dado que esteja no site the internet herokuapp
  E realizar um login valido com o usuario "tomsmith" e senha "SuperSecretPassword!"
  Então validar a mensagem You logged into a secure área! na tela
  Quando realizar o logout
  Então validar a mensagem You logged out of the secure area! na tela
