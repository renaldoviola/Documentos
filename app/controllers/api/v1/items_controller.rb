class Api::V1::ItemsController < ApplicationController
  before_action :set_api_v1_item, only: [:show, :edit, :update, :destroy]

  # GET /api/v1/items
  # GET /api/v1/items.json
  def index
    @api_v1_items = Item.all
    render json: @api_v1_items
  end

  # GET /api/v1/items/1
  # GET /api/v1/items/1.json
  def show
  end

  # GET /api/v1/items/new
  def new
    @api_v1_item = Api::V1::Item.new
  end

  # GET /api/v1/items/1/edit
  def edit
  end

  # POST /api/v1/items
  # POST /api/v1/items.json
  def create
    @api_v1_item = Item.new(api_v1_item_params)

      if @api_v1_item.save
        render json: @api_v1_item
      else
        render json: @api_v1_item.errors
      end
  end

  # PATCH/PUT /api/v1/items/1
  # PATCH/PUT /api/v1/items/1.json
  def update

    if @api_v1_item.update(api_v1_item_params)
      render json: @api_v1_item
    else
      render json: @api_v1_item.errors
    end
  end

  # DELETE /api/v1/items/1
  # DELETE /api/v1/items/1.json
  def destroy
    @api_v1_item.destroy
      render json: {message: 'deletado com sucesso'}
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_api_v1_item
      @api_v1_item = Item.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def api_v1_item_params
      params.require(:item).permit(:plate, :status, :menu_id)
    end
end
