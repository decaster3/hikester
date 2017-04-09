class CommentsCreate < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.string :comment
      t.integer :grade
    end
  end
end
