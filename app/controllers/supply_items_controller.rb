class SupplyItemsController < ApplicationController
  before_action :set_supply_item, only: [:show, :edit, :update, :destroy]

  # GET /supply_items
  # GET /supply_items.json
  def index
    @supply_items = SupplyItem.all
  end

  # GET /supply_items/1
  # GET /supply_items/1.json
  def show
  end

  # GET /supply_items/new
  def new
    @supply_item = SupplyItem.new
  end

  # GET /supply_items/1/edit
  def edit
  end

  # POST /supply_items
  # POST /supply_items.json
  def create
    @supply_item = SupplyItem.new(supply_item_params)

    respond_to do |format|
      if @supply_item.save
        format.html { redirect_to @supply_item, notice: 'Supply item was successfully created.' }
        format.json { render :show, status: :created, location: @supply_item }
      else
        format.html { render :new }
        format.json { render json: @supply_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /supply_items/1
  # PATCH/PUT /supply_items/1.json
  def update
    respond_to do |format|
      if @supply_item.update(supply_item_params)
        format.html { redirect_to @supply_item, notice: 'Supply item was successfully updated.' }
        format.json { render :show, status: :ok, location: @supply_item }
      else
        format.html { render :edit }
        format.json { render json: @supply_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /supply_items/1
  # DELETE /supply_items/1.json
  def destroy
    @supply_item.destroy
    respond_to do |format|
      format.html { redirect_to supply_items_url, notice: 'Supply item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_supply_item
      @supply_item = SupplyItem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def supply_item_params
      params.require(:supply_item).permit(:name, :price)
    end
end
