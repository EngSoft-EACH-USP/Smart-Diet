class CalculadoraController < ApplicationController
    
    def new
        @calculadora = Calculadora.new
    end

    def index
    end
    
    def create
        @calculadora = Calculadora.new(params[:calculadora])
        if @calculadora.save
            redirect_to @calculadora
        end
    end

    private
    def calculadora_params
        params.require(:calculadora).permit(:peso, :altura, :idade, :meta, :sexo, :tempo)
    end

    def show
        @calculadora = Calculadora.find(params[:id])
    end
end
