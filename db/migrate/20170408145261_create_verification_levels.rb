class CreateVerificationLevels < ActiveRecord::Migration[5.0]
  def change
  	 create_table :verification_levels do |t|
       t.boolean :facebook
       t.boolean :date_of_birth
       t.boolean :telegram
       t.boolean :whatsapp
       t.boolean :address
       t.boolean :image
       t.integer :rating
     end
  end
end
