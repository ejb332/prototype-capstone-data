class DestinationsController < ApplicationController
  require "date"
  before_action :authenticate_user!

  def index
    @destinations = current_user.destinations
    render "index.html.erb"
  end

  def new
    render "new.html.erb"
  end

  def create
    @destination = Destination.new(
      city: params["city"],
      state: params["state"],
      zip: params["zip"],
      date: date["date"],
      user_id: current_user
    )
    if @destination.save
      flash[:success] = "Destination added to Itinerary"
      redirect_to "/destinations"
    else
      render "new.html.erb"
    end
  end

  def show
    @destination = Unirest.get("http://api.wunderground.com/api/#{ENV['WU_API_KEY']}/almanac/q/CA/San_Francisco.json").body
    @date = params["date"]
    render "show.html.erb"
  end

  def edit
    @destination = Destination.find_by(id: params[:id])
    render "edit.html.erb"
  end

  def update
    destination = Destination.find_by(id: params[:id])
    destination.city = params[:city]
    destination.state = params[:state]
    destination.zip = params[:zip]
    destination.date = params[:date]
    destination.map = params[:zip]
    if destination.save
      flash[:success] = "Destination Updated and Added to Itinerary"
      redirect_to "/destinations"
    else
      render "edit.html.erb"
    end

  end

  def destroy
    @destination = Destination.find_by(id: params[:id])
    flash[:success] = "Destination Removed From Itinerary"
    redirect_to "/destinations"
  end
end