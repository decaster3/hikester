class Profile < ApplicationRecord
	 has_many :comments, dependent: :destroy
	 has_one :verification_level
	 belongs_to :user, index: true
end
