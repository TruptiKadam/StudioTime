class CreateStudios < ActiveRecord::Migration[5.2]
  def change
    create_table :studios do |t|
      t.belongs_to :user, index: true
      t.string :name
      t.string :country, index: true
      t.string :city, index: true
      t.string :latitude
      t.string :longitude
      t.string :price
      t.boolean :verified, index: true, default: false
      t.boolean :premium, index: true, default: false
      t.boolean :quick_replies, index: true, default: false
      t.boolean :audio_eng_included, index: true, default: false
      t.integer :rating
      t.text :description
      t.integer :min_booking
      t.text :main_equipment
      t.text :past_clients
      t.text :audio_samples
      t.string :hours
      t.text :rules
      t.timestamps
    end
  end
end
