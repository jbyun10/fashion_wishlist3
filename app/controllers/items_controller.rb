class ItemsController < ApplicationController
  def index
    @items = Item.all
  end

  def show
    @item = Item.find(params[:id])
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new
    @item.name = params[:name]
    @item.link = params[:link]
    @item.category_id = params[:category_id]
    @item.price = params[:price]
    @item.occasion_id = params[:occasion_id]
    @item.image_url = params[:image_url]

    if @item.save
      redirect_to "/items", :notice => "Item created successfully."
    else
      render 'new'
    end
  end

  def edit
    @item = Item.find(params[:id])
  end

  def update
    @item = Item.find(params[:id])

    @item.name = params[:name]
    @item.link = params[:link]
    @item.category_id = params[:category_id]
    @item.price = params[:price]
    @item.occasion_id = params[:occasion_id]
    @item.image_url = params[:image_url]

    if @item.save
      redirect_to "/items", :notice => "Item updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @item = Item.find(params[:id])

    @item.destroy

    redirect_to "/items", :notice => "Item deleted."
  end
end
