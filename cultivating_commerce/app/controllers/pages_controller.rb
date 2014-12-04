class Numeric
  def to_rad
    self * Math::PI / 180
  end
end

class PagesController < ApplicationController

  def home
    @items = Item.all
    if !params[:search]
      @events = Event.all
      @listings = Listing.all
      @hash = Gmaps4rails.build_markers(@events) do |event, marker|
        marker.lat event.latitude
        marker.lng event.longitude        
        marker.infowindow render_to_string(:partial => "/events/show", :locals => { :object => event})                
      end
    elsif !user_signed_in?
      @listings = Listing.search(params[:search]).order("created_at DESC")
      users = @listings.map { |l| l.user }
      events_unsorted = users.map { |u| u.events }.uniq.flatten      
    else
      params[:search] && user_signed_in?
      counter = 0
      @listings = Listing.search(params[:search]).order("created_at DESC")
      users = @listings.map { |l| l.user }
      events_unsorted = users.map { |u| u.events }.uniq.flatten
      @events = sort_events(events_unsorted)  
      @hash = Gmaps4rails.build_markers(@events) do |event, marker|
        counter +=1        
        if(event.hosts.first == current_user)
          color = "00FFFF" 
        elsif(event.participants.include?(current_user))
          color = "98fb98"
        else
          color = "ff0000"
        end

        marker.lat event.latitude
        marker.lng event.longitude        
        marker.infowindow render_to_string(:partial => "/events/show", :locals => { :object => event})        
        marker.picture({
        :url     => "http://chart.apis.google.com/chart?chst=d_map_pin_letter&chld=#{counter}|#{color}|000000",
        :width   => 32,
        :height  => 32
        })
      end      
    end      
  end

  def sort_events(events_unsorted)
    distances = []
    events_unsorted.each do |event|
      event.distance = distance(current_user.coords, event.coords)
    end
    events_unsorted.sort_by {|obj| obj.distance}.uniq
  end

  def distance loc1, loc2
    lat1, lon1 = loc1
    lat2, lon2 = loc2
    dLat = (lat2-lat1).to_rad;
    dLon = (lon2-lon1).to_rad;
    a = Math.sin(dLat/2) * Math.sin(dLat/2) +
        Math.cos(lat1.to_rad) * Math.cos(lat2.to_rad) *
        Math.sin(dLon/2) * Math.sin(dLon/2);
    c = 2 * Math.atan2(Math.sqrt(a), Math.sqrt(1-a));
    d = 6371 * c;
  end
end
