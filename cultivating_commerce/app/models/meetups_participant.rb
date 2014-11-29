class MeetupsParticipant < ActiveRecord::Base
  belongs_to :participant, class:"User" 
  belongs_to :meetup
end
