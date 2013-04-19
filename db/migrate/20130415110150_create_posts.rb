class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.text :content
      t.string :tag
      t.integer :user_id
      t.string :multimedium_id

      t.timestamps
    end
  end
end
