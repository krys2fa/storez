class CreateBranches < ActiveRecord::Migration[5.0]
  def change
    create_table :branches do |t|
      t.string :name
      t.text :location
      t.text :address
      t.string :email
      t.string :telephone
      t.references :store, foreign_key: true

      t.timestamps
    end
  end
end
