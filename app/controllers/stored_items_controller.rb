class StoredItemsController < ApplicationController
  def new
    @stored_items = StoredItem.new
  end
  
  def create
    @stored_items = StoredItem.new(stored_item_params)
    @stored_items.save
    redirect_to stored_item_path(@stored_items)
  end

  def index
    @stored_items = StoredItem.all
  end

  def show
    @stored_item = StoredItem.find(params[:id])
  end

  def edit
    @stored_item = StoredItem.find(params[:id])
  end
  
  def update
    stored_item = StoredItem.find(params[:id])
    stored_item.update(stored_item_params)
    redirect_to stored_item_path(stored_item.id)  
  end
  
  def destroy
    stored_item = StoredItem.find(params[:id])
    stored_item.destroy
    redirect_to stored_items_path
  end
  
  private

  def stored_item_params
    params.require(:stored_item).permit(:name, :explanation, :quantity, :place)
  end
end
