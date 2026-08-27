require "spec_helper"
require_relative "../pages/login_page"

RSpec.describe "Login", type: :feature do
  let(:login_page) { LoginPage.new }

  it "exibe mensagem ao informar credenciais inválidas" do
    login_page.acessar
    login_page.fazer_login(
      "usuario_inexistente@teste.com",
      "senha_invalida"
    )

    expect(page).to have_content(
      "Login was unsuccessful. Please correct the errors and try again."
    )
  end
end