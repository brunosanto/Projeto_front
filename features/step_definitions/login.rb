logar = Login.new

Dado(/^que esteja no site the internet herokuapp$/) do
  visit 'https://the-internet.herokuapp.com/login'
end

Dado(/^realizar um login valido com o usuario "([^"]*)" e senha "([^"]*)"$/) do |user,password|
  logar.realizarLogin(user,password)
end

Então(/^validar a mensagem You logged into a secure área! na tela$/) do
  expect(page).to have_content "You logged into a secure area!"
end

Quando(/^realizar o logout$/) do
  logar.realizarLogout
end

Então(/^validar a mensagem You logged out of the secure area! na tela$/) do
  expect(page).to have_content "You logged out of the secure area!"
end
