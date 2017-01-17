class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.integer :quantity
      t.text :code
      t.integer :price
      t.references :branch, foreign_key: true

      t.timestamps
    end
  end
end
