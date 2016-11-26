class DoorsController < ApplicationController
  http_basic_authenticate_with name: Settings.accounts.admin.username, 
                               password: Settings.accounts.admin.password,
                               only: [:edit, :update, :overview]

  http_basic_authenticate_with name: Settings.accounts.user.username, 
                               password: Settings.accounts.user.password,
                               only: [:index, :show]
  def index
    @doors = Door.all
  end

  def edit
    @door = Door.find_by_day(params[:id])
  end

  def update
    @door = Door.find(params[:id])
    @door.update(door_params)
  end

  def show
    @door = Door.find_by_day(params[:id])
  end

  def overview
    @doors = Door.all
  end

  private

  def door_params
    params.require(:door).permit(:text, :day, :open)
  end
end
