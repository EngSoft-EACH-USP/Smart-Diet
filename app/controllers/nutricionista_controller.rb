class NutricionistaController < ApplicationController
  
 def new
  @nutricionista = Nutricionistum.new
  puts params.inspect
 end
 
 def index 
 end

 def show
    @nutricionista = Nutricionistum.find(params[:id])
 end

 def create
    @nutricionista = Nutricionistum.new(nutricionista_params)
    if @nutricionista.save
      redirect_to @nutricionista
    else
      render "new"
    end
end


        private def nutricionista_params
            params.require(:nutricionistum).permit(:nome, :id, :email, :exp)
        end   

end