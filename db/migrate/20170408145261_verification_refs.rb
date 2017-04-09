class VerificationRefs < ActiveRecord::Migration[5.0]
  def change
  	 change_table :verification_levels do |t|
  		t.belongs_to :profile, index: true
  	end
  end
end
