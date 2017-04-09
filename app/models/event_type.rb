class EventType < ApplicationRecord
  has_many :event_types, index: true
end
