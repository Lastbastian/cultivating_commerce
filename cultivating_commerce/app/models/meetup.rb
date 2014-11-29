class Meetup < ActiveRecord::Base  
  has_many :participants, through: :meetups_participants
  has_many :hosts, through: :meetups_hosts
end
