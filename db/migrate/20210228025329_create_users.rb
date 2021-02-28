class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :fullname
      t.string :email, null: false
      t.string :password_digest
      t.datetime :dob
      t.string :state

      t.timestamps
    end
  end
end
