class DoorsController < ApplicationController
  def index
    @doors = Door.all
  end

  def edit
    @door = Door.find(params[:id])
  end

  def update
    @door = Door.find(params[:id])
    @door.update(door_params)
  end

  def show
    @door = Door.find(params[:id])
  end

  private

  def door_params
    params.require(:door).permit(:text, :day, :open)
  end
end
