class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :text
      t.integer :commentable_id
      t.string :comentable_type

      t.timestamps null: false
    end
  end
end
