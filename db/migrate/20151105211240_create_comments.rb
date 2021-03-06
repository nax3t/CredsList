class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :user_id
      t.string :comment
      t.references :item, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
