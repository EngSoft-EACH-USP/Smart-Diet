require 'rails_helper'

RSpec.describe "consulta/index", type: :view do
  before(:each) do
    assign(:consulta, [
      Consultum.create!(
        nome: "Nome",
        sexo: "Sexo",
        idade: 2,
        email: "Email",
        profissional: "Profissional",
        descricao: "MyText"
      ),
      Consultum.create!(
        nome: "Nome",
        sexo: "Sexo",
        idade: 2,
        email: "Email",
        profissional: "Profissional",
        descricao: "MyText"
      )
    ])
  end

  it "renders a list of consulta" do
    render
    assert_select "tr>td", text: "Nome".to_s, count: 2
    assert_select "tr>td", text: "Sexo".to_s, count: 2
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: "Email".to_s, count: 2
    assert_select "tr>td", text: "Profissional".to_s, count: 2
    assert_select "tr>td", text: "MyText".to_s, count: 2
  end
end
