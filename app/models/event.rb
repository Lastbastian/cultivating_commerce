ZIP_CODE_REG_EX = %r{\d{5}(-\d{4})?}


class Event < ActiveRecord::Base
  attr_accessor :distance, :counter

  geocoded_by :full_street_address
  after_validation :geocode
  reverse_geocoded_by :latitude, :longitude

  has_many :events_participants
  has_many :events_hosts

  has_many :participants, class_name: "User", through: :events_participants
  has_many :hosts, class_name: "User", through: :events_hosts

  # validates :title,
  #           :presence => {:message => "Your event requires a title."}
  # validates :date,
  #           :presence => {:message => "Please choose a date for your event."}
  # validates :time,
  #           :presence => {:message => "Please enter the start and end times of your event (example: 1:00PM-3:00PM)."}
  # validates :address_line_1,
  #           :presence => {:message => "Please enter your address to create an event."}
  # validates :city,
  #           :presence => {:message => "Please enter the city for your event."}
  # validates :zipcode,
  #           :presence => true, :format => { :with => ZIP_CODE_REG_EX, :message => "Please enter a valid five digit zip code for your event."}



  def full_street_address
    "#{self.address_line_1}, #{self.city}, #{self.zipcode}"
  end

  def coords
    [self.latitude.to_f, self.longitude.to_f]
  end
end
