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
      @hash = Gmaps4rails.build_markers(@events) do |event, marker|
        marker.lat event.latitude
        marker.lng event.longitude
        marker.infowindow render_to_string(:partial => "/events/show", :locals => { :object => event})
      end
  end
end
