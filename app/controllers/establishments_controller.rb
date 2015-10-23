class EstablishmentsController < ApplicationController
  before_action :set_establishment, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!

    layout 'system'

  #before_action :authenticate_user!, :except => [:index]
  # GET /establishments
  # GET /establishments.json


  def index
    @establishments = Establishment.all
    @establishments = @products.find_by_name(params[:find_by_name]) if params[:find_by_name].present?
  end

  # GET /establishments/1
  # GET /establishments/1.json
  def show
  end


  # GET /establishments/new
  def new
    @establishment = Establishment.new
  end

  # GET /establishments/1/edit
  def edit
  end

  # POST /establishments
  # POST /establishments.json
  def create

    @establishment = Establishment.new(establishment_params)
    @establishment.user_id = current_user.id

    respond_to do |format|
      if @establishment.save
        format.html { redirect_to @establishment, notice: 'Estabelecimento cadastrado com sucesso !' }
        format.json { render :show, status: :created, location: @establishment }
      else
        format.html { render :new }
        format.json { render json: @establishment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /establishments/1
  # PATCH/PUT /establishments/1.json
  def update
    respond_to do |format|
      if @establishment.update(establishment_params)
        format.html { redirect_to @establishment, notice: 'Atualizado !' }
        format.json { render :show, status: :ok, location: @establishment }
      else
        format.html { render :edit }
        format.json { render json: @establishment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /establishments/1
  # DELETE /establishments/1.json
  def destroy
    @establishment.destroy
    respond_to do |format|
      format.html { redirect_to establishments_url, notice: 'Removido com sucesso !' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_establishment
      @establishment = Establishment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def establishment_params
      params.require(:establishment).permit(:name, :city, :state, :neighborhood, :address, :zipcode, :avatar, :status)
    end
end
