class Api::V1::MenusController < ApplicationController
  before_action :set_api_v1_menu, only: [:show, :edit, :update, :destroy]

  # GET /api/v1/menus
  # GET /api/v1/menus.json
  def index
    @api_v1_menus = Menu.all
    render json: @api_v1_menus
  end

  # GET /api/v1/menus/1
  # GET /api/v1/menus/1.json
  def show
  end

  # GET /api/v1/menus/new
  def new
    @api_v1_menu = Menu.new
  end

  # GET /api/v1/menus/1/edit
  def edit
  end

  # POST /api/v1/menus
  # POST /api/v1/menus.json
  def create
    @api_v1_menu = Menu.new(api_v1_menu_params)

      if @api_v1_menu.save
        render json: @api_v1_menu
      else
        render json: @api_v1_menu.errors
      end

  end

  # PATCH/PUT /api/v1/menus/1
  # PATCH/PUT /api/v1/menus/1.json
  def update

      if @api_v1_menu.update(api_v1_menu_params)
       render json: @api_v1_menu
      else
        render json: @api_v1_menu.errors
      end

  end

  # DELETE /api/v1/menus/1
  # DELETE /api/v1/menus/1.json
  def destroy
    @api_v1_menu.destroy
    render json: {message: 'deletado com sucesso'}
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_api_v1_menu
      @api_v1_menu = Menu.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def api_v1_menu_params
      params.require(:menu).permit(:data , :weekday , :price , :status)
    end
end
