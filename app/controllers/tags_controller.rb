class TagsController < ApplicationController
  def create
    @plant = Plant.find(params[:plant_id])
    @tag = Tag.find(params[:tag][:name])
    @plant.tags << @tag
    @plant.save
    redirect_to root_path
  end
end
