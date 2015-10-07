class MenusController < ApplicationController
  before_action :set_menu, only: [:show, :edit, :update, :destroy]

  # GET /menus
  # GET /menus.json
  def index
    @menus = load_establishment.menu.all
  end

  # GET /menus/1
  # GET /menus/1.json
  def show
  end

  # GET /menus/new
  def new
    @menu = load_establishment.menu.new
  end

  # GET /menus/1/edit
  def edit
    @menu = load_establishment.menu.find(params[:id])
  end

  # POST /menus
  # POST /menus.json
  def create
    @establishment = Establishment.find(params[:establishment_id])
    @menu = Menu.new(menu_params)

    respond_to do |format|
      if @menu.save
        format.html { redirect_to establishment_menu_path(@establishment,@menu), notice: 'Novo Cardapio adicionado.' }
        format.json { render :show, status: :created, location: @menu }
      else
        format.html { render :new }
        format.json { render json: @menu.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /menus/1
  # PATCH/PUT /menus/1.json
  def update
    @establishment = Establishment.find(params[:establishment_id])
    respond_to do |format|
      if @menu.update(menu_params)
        format.html { redirect_to edit_establishment_menu_path(@establishment, @menu), notice: 'Cardapio atualizado.' }
        format.json { render :show, status: :ok, location: @menu }
      else
        format.html { render :edit }
        format.json { render json: @menu.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /menus/1
  # DELETE /menus/1.json
  def destroy
    @menu.destroy
    respond_to do |format|
      format.html { redirect_to menus_url, notice: 'O Cardapio foi removido.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_menu
      @menu = Menu.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def menu_params
      params.require(:menu).permit(:data, :weekday, :price, :status, :establishment_id)
    end

    def load_establishment
      @establishment = Establishment.find(params[:establishment_id])
    end

end
