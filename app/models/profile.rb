class Profile < ApplicationRecord
	 has_many :comments, dependent: :destroy
	 has_one :verification_level	 
end
