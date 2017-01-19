class Branch < ApplicationRecord
  # attr_accessor :name, :location, :email, :address, :telephone, :store_id

  belongs_to :store, optional: true
  has_many :products
  has_many :agents
  has_many :sales
end
