require 'calculadora.rb'


RSpec.describe Calculadora do

    it 'cria calculadora de calorias' do
        calc = Calculadora.new
        expect(calc).to be_kind_of(Calculadora)
    end
    

    it 'calcula calorias' do
        calc = Calculadora.new
        expect(calc).to respond_to(:calcular)
    end

    it 'retorna número de calorias diárias' do
        calc = Calculadora.new
        basal = calc.calcular()
        expect(basal).to eq 634
    end
end
