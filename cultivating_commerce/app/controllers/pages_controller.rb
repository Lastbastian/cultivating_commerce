class PagesController < ApplicationController

  def home
    if params[:search]
      @listings = Listing.search(params[:search]).order("created_at DESC")
      users = @listings.map { |l| l.user }
      @events = users.map { |u| u.events }.flatten
    else
      @events = Event.all
      @listings = Listing.all
    end
      @events_coords = @events.map {|f| { lat: f.latitude, lng: f.longitude } }
      @events_coords = @events_coords.to_json.html_safe
  end
end