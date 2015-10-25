class Api::V1::EstablishmentsController < ApplicationController
  before_action :set_api_v1_establishment, only: [:show, :edit, :update, :destroy]

  # GET /api/v1/establishments
  # GET /api/v1/establishments.json
  def index
    @api_v1_establishments = Establishment.all
    render json: @api_v1_establishments
  end

  # GET /api/v1/establishments/1
  # GET /api/v1/establishments/1.json
  def show
  end

  # GET /api/v1/establishments/new
  def new
    @api_v1_establishment = Establishment.new
  end

  # GET /api/v1/establishments/1/edit
  def edit
  end

  # POST /api/v1/establishments
  # POST /api/v1/establishments.json
  def create
    @api_v1_establishment = Establishment.new(api_v1_establishment_params)

    respond_to do |format|
      if @api_v1_establishment.save
        format.html { redirect_to @api_v1_establishment, notice: 'Establishment was successfully created.' }
        format.json { render :show, status: :created, location: @api_v1_establishment }
      else
        format.html { render :new }
        format.json { render json: @api_v1_establishment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /api/v1/establishments/1
  # PATCH/PUT /api/v1/establishments/1.json
  def update
    respond_to do |format|
      if @api_v1_establishment.update(api_v1_establishment_params)
        format.html { redirect_to @api_v1_establishment, notice: 'Establishment was successfully updated.' }
        format.json { render :show, status: :ok, location: @api_v1_establishment }
      else
        format.html { render :edit }
        format.json { render json: @api_v1_establishment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /api/v1/establishments/1
  # DELETE /api/v1/establishments/1.json
  def destroy
    @api_v1_establishment.destroy
    respond_to do |format|
      format.html { redirect_to api_v1_establishments_url, notice: 'Establishment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_api_v1_establishment
      @api_v1_establishment = :Establishment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def api_v1_establishment_params
      params.require(:establishment).permit(:name, :city, :state, :neighborhood, :address, :zipcode, :avatar, :status)
    end
end
