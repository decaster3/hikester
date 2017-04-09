class Profile < ApplicationRecord
	 has_many :comments, :event_users, dependent: :destroy
	 has_one :verification_level
	 belongs_to :user, index: true
end
