class EventItemListsController < ApplicationController
  before_action :set_event_item_list, only: [:show, :edit, :update, :destroy]

  # GET /event_item_lists
  # GET /event_item_lists.json
  def index
    @event_item_lists = EventItemList.all
  end

  # GET /event_item_lists/1
  # GET /event_item_lists/1.json
  def show
  end

  # GET /event_item_lists/new
  def new
    @event_item_list = EventItemList.new
  end

  # GET /event_item_lists/1/edit
  def edit
  end

  # POST /event_item_lists
  # POST /event_item_lists.json
  def create
    @event_item_list = EventItemList.new(event_item_list_params)

    respond_to do |format|
      if @event_item_list.save
        format.html { redirect_to @event_item_list, notice: 'Event item list was successfully created.' }
        format.json { render :show, status: :created, location: @event_item_list }
      else
        format.html { render :new }
        format.json { render json: @event_item_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /event_item_lists/1
  # PATCH/PUT /event_item_lists/1.json
  def update
    respond_to do |format|
      if @event_item_list.update(event_item_list_params)
        format.html { redirect_to @event_item_list, notice: 'Event item list was successfully updated.' }
        format.json { render :show, status: :ok, location: @event_item_list }
      else
        format.html { render :edit }
        format.json { render json: @event_item_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /event_item_lists/1
  # DELETE /event_item_lists/1.json
  def destroy
    @event_item_list.destroy
    respond_to do |format|
      format.html { redirect_to event_item_lists_url, notice: 'Event item list was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event_item_list
      @event_item_list = EventItemList.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def event_item_list_params
      params.require(:event_item_list).permit(:event, :supply_item, :count)
    end
end
