class Branch < ApplicationRecord
  belongs_to :store
  has_many :products
  has_many :agents
  has_many :sales
end
