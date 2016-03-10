class Owner::BoatsController < ApplicationController
  before_action :find_boat, only: [:show, :edit, :update, :destroy]

  def index
    @boats = current_user.boats
  end

  def show
    @full_name = @boat.owner.first_name + " " + @boat.owner.last_name
  end

  def new
    @boat = Boat.new
    @owner = current_user
  end

  def create
    @boat = Boat.new(boat_param)
    @owner = current_user
    @boat.owner = @owner
    @boat.save!
    redirect_to owner_boat_path(@boat)
  end

  def edit
  end

  def update
    @boat.update!(boat_param)
    redirect_to owner_boat_path(@boat)
  end

  def destroy
    @boat.destroy!
    redirect_to profile_path(@boat)
  end

  private

  def boat_param
    params.require(:boat).permit(:name, :description, :category, :size, :city, :address, :price, :photo, :photo_cache)

  end

  def find_boat
    @boat = current_user.boats.find(params[:id])
  end
end
