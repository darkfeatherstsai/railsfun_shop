class Dashboard::Admin::ItemsController < Dashboard::Admin::AdminController
  def index
    @items = @paginate = Item.includes(:cate).order("id DESC").paginate(:page => params[:page])
  end
  def new
    @item = Item.new
  end
  # GET /items/1/edit
  def edit
    @item = Item.find(params[:id])
  end
  # POST /items
  def create
    @item = Item.new(item_params)
    if @item.save!
      redirect_to @item, notice: 'Item was successfully created.'
    else
      render :new
    end
  end
  # PATCH/PUT /items/1
  def update
    @item = Item.find(params[:id])
    @item.update(item_params)
    redirect_to :action => :index , notice: 'Item was successfully updated.'
  end

  # DELETE /items/1
  def destroy
    @item.destroy
    redirect_to items_url, notice: 'Item was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_item
      @item = Item.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def item_params
      params.require(:item).permit!
    end
end
