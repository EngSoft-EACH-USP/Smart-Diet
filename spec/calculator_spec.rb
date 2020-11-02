require 'calculator.rb'

RSpec.describe Calculator do

    it 'cria calculadora de calorias' do
        calc = Calculator.new
        expect(calc).to be_kind_of(Calculator)
    end
    

    it 'calcula calorias' do
        calc = Calculator.new
        expect(calc).to respond_to(:calcular)
    end

    #it 'retorna número de calorias diárias' do
     #   calc = Calculator.new
     #   expect(calc).to eq Integer
    #end
end
