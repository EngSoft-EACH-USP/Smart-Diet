require 'rails_helper'

RSpec.describe "consulta/new", type: :view do
  before(:each) do
    assign(:consultum, Consultum.new(
      nome: "MyString",
      sexo: "MyString",
      idade: 1,
      email: "MyString",
      profissional: "MyString",
      descricao: "MyText"
    ))
  end

  it "renders new consultum form" do
    render

    assert_select "form[action=?][method=?]", consulta_path, "post" do

      assert_select "input[name=?]", "consultum[nome]"

      assert_select "input[name=?]", "consultum[sexo]"

      assert_select "input[name=?]", "consultum[idade]"

      assert_select "input[name=?]", "consultum[email]"

      assert_select "input[name=?]", "consultum[profissional]"

      assert_select "textarea[name=?]", "consultum[descricao]"
    end
  end
end
