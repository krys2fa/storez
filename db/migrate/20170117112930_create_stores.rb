class CreateStores < ActiveRecord::Migration[5.0]
  def change
    create_table :stores do |t|
      t.text :name
      t.string :manager
      t.string :telephone
      t.text :hq_location
      t.text :hq_address

      t.timestamps
    end
  end
end
