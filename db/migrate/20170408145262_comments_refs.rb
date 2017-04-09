class CommentsRefs < ActiveRecord::Migration[5.0]
  def change  	
    change_table :comments do |t|
  		t.belongs_to :profile, index: true
  	end
  end
end
