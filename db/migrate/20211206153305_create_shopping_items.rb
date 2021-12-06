class CreateShoppingItems < ActiveRecord::Migration[6.1]
  def change
    create_table :shopping_items do |t|
      t.string :name
      t.string :description
      t.decimal :price, precision: 5, scale: 2
      t.boolean :acquired

      t.timestamps
    end
  end
end
