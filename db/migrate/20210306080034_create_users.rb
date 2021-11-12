class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :email
      t.string :password
      t.string :password_confirmation
      t.string :user_name
      t.string :city_name
      t.string :gender
      t.string :fruits, array: true
      t.timestamps
    end
  end
end
