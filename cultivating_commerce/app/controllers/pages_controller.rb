class PagesController < ApplicationController

  def home
    if params[:search]
      @listings = Listing.search(params[:search]).order("created_at DESC")
    else
      @events = Event.all
      @events_coords = @events.map {|f| { lat: f.latitude, lng: f.longitude } }
      @events_coords = @events_coords.to_json.html_safe
    end
  end
end
