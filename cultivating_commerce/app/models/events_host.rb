class EventsHost < ActiveRecord::Base
  belongs_to :host, class: "User"
  belongs_to :event
end
