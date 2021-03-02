class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :username
      t.string :name
      t.string :password_digest
      t.integer :personal_discount
      t.string :email
      t.string :phone_number
      t.timestamps
    end
  end
end
