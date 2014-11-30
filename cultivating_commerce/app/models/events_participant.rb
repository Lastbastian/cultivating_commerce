class EventsParticipant < ActiveRecord::Base
  belongs_to :participant, class: "User"
  belongs_to :event
end
