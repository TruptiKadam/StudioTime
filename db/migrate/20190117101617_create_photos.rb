class CreatePhotos < ActiveRecord::Migration[5.2]
  def change
    create_table :photos do |t|
      t.string :photo
      t.belongs_to :studio, index: true
      t.timestamps
    end
  end
end
