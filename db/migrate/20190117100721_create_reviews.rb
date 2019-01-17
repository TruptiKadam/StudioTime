class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.text :description
      t.integer :rating
      t.references :reviewer, polymorphic: true, index: true
      t.boolean :verified, default: false
      t.timestamps
    end
  end
end
