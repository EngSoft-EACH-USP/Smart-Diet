class ConsultaController < ApplicationController
  before_action :set_consultum, only: [:show, :edit, :update, :destroy]

  # GET /consulta
  # GET /consulta.json
  def index
    @consulta = Consultum.all
  end

  # GET /consulta/1
  # GET /consulta/1.json
  def show
    @consulta1 = Consultum.find(params[:id])
  
  rescue ActiveRecord::RecordNotFound
    render :file => "#{Rails.root}/public/404.html",  :status => 200
  end

  # GET /consulta/new
  def new
    @consultum = Consultum.new
  end

  # GET /consulta/1/edit
  def edit
  end

  # POST /consulta
  # POST /consulta.json
  def create
    @consultum = Consultum.new(consultum_params)

    respond_to do |format|
      if @consultum.save
        format.html { redirect_to @consultum, notice: 'Sua solicitação foi realizada com sucesso. Entraremos em coontato por email.' }
        # format.json { render :show, status: :created, location: @consultum }
      else
        format.html { render :new }
        format.json { render json: @consultum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /consulta/1
  # PATCH/PUT /consulta/1.json
  def update
    respond_to do |format|
      if @consultum.update(consultum_params)
        format.html { redirect_to @consultum, notice: 'Consulta foi editada com sucesso.' }
        format.json { render :show, status: :ok, location: @consultum }
      else
        # format.html { render :edit }
        format.json { render json: @consultum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /consulta/1
  # DELETE /consulta/1.json
  def destroy
    @consultum.destroy
    respond_to do |format|
      format.html { redirect_to consulta_url, notice: 'Consulta foi excluída com sucesso.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_consultum
      @consultum = Consultum.find(params[:id])

      rescue ActiveRecord::RecordNotFound
      render :file => "#{Rails.root}/public/404.html",  :status => 200
    end

    # Only allow a list of trusted parameters through.
    def consultum_params
      params.require(:consultum).permit(:nome, :sexo, :idade, :email, :profissional, :descricao)
    end
end
