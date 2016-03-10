class BoatsController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    @boats = Boat.all

    if params[:city].present?
      @boats = @boats.where(city: params[:city])
    end
  end

  def show
    @boat = Boat.find(params[:id])
  end

  def search

  end
end
