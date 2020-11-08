class DietaController < ApplicationController
  def index
  	@dietas = Dieta.all
  end

  def show
  	@dieta = Dieta.find(params[:id])
  end
end
