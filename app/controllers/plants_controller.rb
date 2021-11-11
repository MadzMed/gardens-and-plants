class PlantsController < ApplicationController
  def show
    @plant = Plant.find(params[:id])
    @tag = Tag.new
  end

  def create
    @garden = Garden.find(params[:garden_id])
    @plant = Plant.new(plant_params)
    @plant.gardens << @garden
    if @plant.save
      redirect_to garden_path(@garden)
    else
      render 'gardens/show'
    end
  end

  def destroy
    @plant = Plant.find(params[:id])
    @garden = Garden.find(params[:garden_id])
    @plant.destroy
    redirect_to garden_path(@garden)
  end

  private

  def plant_params
    params.require(:plant).permit(:name)
  end
end
