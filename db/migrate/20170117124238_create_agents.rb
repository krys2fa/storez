class CreateAgents < ActiveRecord::Migration[5.0]
  def change
    create_table :agents do |t|
      t.string :firstname
      t.string :lastname
      t.text :email
      t.text :password
      t.text :telephone
      t.boolean :isadmin
      t.references :branch, foreign_key: true

      t.timestamps
    end
  end
end
