class Comment < ApplicationRecord
	belongs_to :profile, index: true
end
