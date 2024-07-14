class CreateStoredItems < ActiveRecord::Migration[6.1]
  def change
    create_table :stored_items do |t|
      t.string :name
      t.text :explanation
      t.string :quantity
      t.string :place
      t.string :user
      t.timestamps
    end
  end
end
