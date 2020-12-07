require 'rails_helper'

RSpec.describe Consultum do
  describe "cria #consulta"
  it "deve criar consulta e achar" do
    consulta = Consultum.create(
      nome: 'nome da pessoa',
      sexo: 'Masculino',
      idade: 18,
      email: 'email@emil.com',
      profissional: 'Nutricionista',
      descricao: 'texto padrão'
    )
    @result1 = Consultum.where(nome: 'nome da pessoa')
    expect(@result1).to eq([consulta])
  end

  it 'deve buscar uma consulta com um nome que não existe e não encontrar' do
    @result = Consultum.where(nome: 'não criado')
    expect(@result).to eq([])
  end
    
end