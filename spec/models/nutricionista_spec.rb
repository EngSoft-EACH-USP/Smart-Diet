require 'rails_helper'

    describe Nutricionistum do 
    it "é válido quando nome, último nome e email estão presentes" do 
     nutricionistum = Nutricionistum.new(nome: 'Bruce', 
      id: '2', 
      email: 'bruce@ironmaiden.com',
      exp: '12')
      expect(nutricionistum).to be_valid 
     end 
   end

   describe Nutricionistum do 
    it "é invalido sem o primeiro nome" do 
     nutricionistum = Nutricionistum.new(nome: nil) 
     nutricionistum.valid?   
     expect(nutricionistum.errors[:nome]).to include("can't be blank") 
    end 
   end

   describe Nutricionistum do 
    it "é inválido caso já exista um e-mail ou CRN igual" do 
     nutricionistum =  Nutricionistum.create( nome: 'Steve', 
      id: '12', email: 'contato@ironmaiden.com', exp: '12' ) 
     nutricionistum = Nutricionistum.new( nome: 'Bruce', 
      id: '12', email: 'contato@ironmaiden.com', exp: '12' ) 
     nutricionistum.valid? 
     expect(nutricionistum.errors[:email]).to include('has already been taken')
     expect(nutricionistum.errors[:id]).to include('has already been taken')
    end 
   end
