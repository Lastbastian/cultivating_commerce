class Event < ActiveRecord::Base
  has_many :participants, through: :events_participants
  has_many :hosts,        through: :events_hosts
end
