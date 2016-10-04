class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :name, null: false
      t.string :email, null: false
      t.integer :user_id, null: false

      t.timestamps null: false
    end

    # Either email or user_id can be different, but they cannot both the same
    # The combination of email and user_id must be unique
    add_index :contacts, [:email, :user_id], unique: true
    add_index :contacts, :user_id
  end
end
