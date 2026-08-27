class LoginPage
  include Capybara::DSL

  def acessar
    visit "/login"
  end

  def preencher_email(email)
    fill_in "Email", with: email
  end

  def preencher_senha(senha)
    fill_in "Password", with: senha
  end

  def clicar_entrar
    click_button "Log in"
  end

  def fazer_login(email, senha)
    preencher_email(email)
    preencher_senha(senha)
    clicar_entrar
  end
end