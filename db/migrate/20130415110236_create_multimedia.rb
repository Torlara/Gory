class CreateMultimedia < ActiveRecord::Migration
  def change
    create_table :multimedia do |t|
      t.string :name
      t.string :source
      t.string :tag

      t.timestamps
    end
  end
end
