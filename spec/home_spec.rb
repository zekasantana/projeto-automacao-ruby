require "spec_helper"

RSpec.describe "Página inicial", type: :feature do
  it "exibe a mensagem de boas-vindas" do
    visit "/"

    expect(page).to have_content("Welcome to our store")
  end
end