class CreateStudioTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :studio_types do |t|
      t.belongs_to :studio, index: true
      t.belongs_to :type, index: true
      t.timestamps
    end
  end
end
