class VerificationLevel < ApplicationRecord
  belongs_to :profile, index: true
end
