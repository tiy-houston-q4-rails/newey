class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :photo
      t.integer :likes, default: 0

      t.timestamps
    end
  end
end
