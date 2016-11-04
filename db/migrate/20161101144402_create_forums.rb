class CreateForums < ActiveRecord::Migration
  def change
    create_table :forums do |t|
      t.string :characterName
      t.string :characterPicture

      t.timestamps null: false
    end
  end
end
