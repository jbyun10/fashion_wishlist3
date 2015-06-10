class OccasionsController < ApplicationController
  def index
    @occasions = Occasion.all
  end

  def show
    @occasion = Occasion.find(params[:id])
  end

  def new
    @occasion = Occasion.new
  end

  def create
    @occasion = Occasion.new
    @occasion.name = params[:name]

    if @occasion.save
      redirect_to "/occasions", :notice => "Occasion created successfully."
    else
      render 'new'
    end
  end

  def edit
    @occasion = Occasion.find(params[:id])
  end

  def update
    @occasion = Occasion.find(params[:id])

    @occasion.name = params[:name]

    if @occasion.save
      redirect_to "/occasions", :notice => "Occasion updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @occasion = Occasion.find(params[:id])

    @occasion.destroy

    redirect_to "/occasions", :notice => "Occasion deleted."
  end
end
