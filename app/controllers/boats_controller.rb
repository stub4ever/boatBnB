class BoatsController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    @boats = Boat.all
    @boats = @boats.where("lower(city) = ?", params[:city].downcase) if params[:city].present?
    @boats = @boats.where("size >= ?", params[:guests]) if params[:guests].present?
    # SELECT * FROM boats WHERE LOWER(city) = 'amsterdam' AND size >= 5
  end

  def show
    @boat = Boat.find(params[:id])
    @full_name = @boat.owner.first_name + " " + @boat.owner.last_name
  end
end

