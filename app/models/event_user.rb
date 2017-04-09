class EventUser < ApplicationRecord
  belongs_to :profiles
  has_many :events
end
