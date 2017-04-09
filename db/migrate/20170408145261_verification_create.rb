class VerificationCreate < ActiveRecord::Migration[5.0]
  def change
  	 create_table :verification_levels do |t|
       t.integer :rating
       t.string :phone
       t.string :email
       t.string :whatsapp
       t.string :facebook
     end
  end
end
