class Event < ApplicationRecord
  has_many :event_specs, :event_users, index: true
end
