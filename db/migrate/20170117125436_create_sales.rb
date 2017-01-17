class CreateSales < ActiveRecord::Migration[5.0]
  def change
    create_table :sales do |t|
      t.datetime :purchasedate
      t.integer :quantity
      t.references :branch, foreign_key: true
      t.references :product, foreign_key: true
      t.references :agent, foreign_key: true

      t.timestamps
    end
  end
end
