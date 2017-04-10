class CreateProfiles < ActiveRecord::Migration[5.0]
	def change
		create_table :profiles do |t|
			t.string :first_name
			t.string :last_name
			t.string :image
			t.string :email
			t.string :facebook
			t.string :gender
			t.string :date_of_birth
			t.string :telegram
			t.string :whatsapp
			t.string :google
			t.string :address
		end
	end
end
