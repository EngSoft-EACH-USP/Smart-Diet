require 'rails_helper'

RSpec.describe "consulta/show", type: :view do
  before(:each) do
    @consultum = assign(:consultum, Consultum.create!(
      nome: "Nome",
      sexo: "Sexo",
      idade: 2,
      email: "Email",
      profissional: "Profissional",
      descricao: "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nome/)
    expect(rendered).to match(/Sexo/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Profissional/)
    expect(rendered).to match(/MyText/)
  end
end
