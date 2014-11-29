class MeetupsHost < ActiveRecord::Base
  belongs_to :host, class:"User" 
  belongs_to :meetup
end
