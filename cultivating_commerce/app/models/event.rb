class Event < ActiveRecord::Base

  geocoded_by :full_street_address
  after_validation :geocode
  reverse_geocoded_by :latitude, :longitude

  has_many :events_participants
  has_many :events_hosts

  has_many :participants, class_name: "User", through: :events_participants
  has_many :hosts, class_name: "User", through: :events_hosts

  def full_street_address
    "#{self.address_line_1}, #{self.city}, #{self.zipcode}"
  end
end
