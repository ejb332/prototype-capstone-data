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
      country: "US",
      start_date: params["start_date"],
      end_date: params["end_date"],
      user_id: current_user.id
    )
    if @destination.save
      flash[:success] = "Destination added to Itinerary"
      redirect_to "/destinations"
    else
      flash[:warning] = "Error! Destination not saved"
      render "new.html.erb"
    end
  end

  def show
    @destination = Destination.find_by(id: params[:id])
    # puts "*" * 50
    @weather = @destination.weather_data
    # puts "*" * 50
    # @all_weathers = {}
    # current_date = @destination.start_date
    # while current_date <= @destination.end_date
    #   @all_weathers[current_date.strftime("%A %B %e %Y")] =
    #   current_date += 1.day
    # end
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
    destination.start_date = params[:start_date]
    destination.end_date = params[:end_date]
    if destination.save
      flash[:success] = "Destination Updated and Added to Itinerary"
      redirect_to "/destinations"
    else
      render "edit.html.erb"
    end
  end

  def destroy
    destination = Destination.find_by(id: params[:id])
    destination.destroy
    flash[:success] = "Destination Removed From Itinerary"
    redirect_to "/destinations"
  end
end