class AddApiKeyToStores < ActiveRecord::Migration[5.0]
  def change
    add_column :stores, :api_key, :string
  end
end
