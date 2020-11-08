class DietaController < ApplicationController
  def index
  	@dietas = Dieta.all
  end

  def show
  	@dieta = Dieta.find(params[:id])
  
  rescue ActiveRecord::RecordNotFound
  	render :file => "#{Rails.root}/public/404.html",  :status => 200
  end
end