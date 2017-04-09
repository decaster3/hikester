class User < ActiveRecord::Base

  has_one :profile
  devise :database_authenticatable, :recoverable, :validatable

  after_create :update_access_token!  

  validates :username, presence: true
  validates :email, presence: true

  private

  def update_access_token!
    self.access_token = "#{self.id}:#{Devise.friendly_token}"
    save
  end

end