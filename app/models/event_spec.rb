class EventSpec < ApplicationRecord
  belongs_to :events, :event_types, index: true
end
