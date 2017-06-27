class Login < SitePrism::Page

  element :usuario, "#username"
  element :senha, "#password"
  element :login, "button.radius"
  element :logout, "a.button.secondary.radius"

  def realizarLogin(user, password)
    usuario.set(user)
    senha.set(password)
    login.click
  end

  def realizarLogout
    logout.click
  end

end
