class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :password_digest
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone_no
      t.boolean :email_verified, default: false
      t.boolean :phone_no_verified, default: false
      t.text :description
      t.string :response_rate
      t.string :response_time
      t.string :url
      t.string :profile_pic
      t.timestamps
    end
  end
end
