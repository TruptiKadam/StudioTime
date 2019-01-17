class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.belongs_to :user, index: true
      t.belongs_to :studio, index: true
      t.integer :subtotal
      t.integer :studiotime_fee
      t.integer :total
      t.boolean :confirmed, default: false
      t.timestamps
    end
  end
end
