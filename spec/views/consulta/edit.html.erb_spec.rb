require 'rails_helper'

RSpec.describe "consulta/edit", type: :view do
  before(:each) do
    @consultum = assign(:consultum, Consultum.create!(
      nome: "MyString",
      sexo: "MyString",
      idade: 1,
      email: "MyString",
      profissional: "MyString",
      descricao: "MyText"
    ))
  end

  it "renders the edit consultum form" do
    render

    assert_select "form[action=?][method=?]", consultum_path(@consultum), "post" do

      assert_select "input[name=?]", "consultum[nome]"

      assert_select "input[name=?]", "consultum[sexo]"

      assert_select "input[name=?]", "consultum[idade]"

      assert_select "input[name=?]", "consultum[email]"

      assert_select "input[name=?]", "consultum[profissional]"

      assert_select "textarea[name=?]", "consultum[descricao]"
    end
  end
end
