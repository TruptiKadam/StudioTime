class CreateBookingDates < ActiveRecord::Migration[5.2]
  def change
    create_table :booking_dates do |t|
      t.belongs_to :booking, index: true
      t.string :date
      t.string :start_time
      t.string :end_time
      t.timestamps
    end
  end
end
