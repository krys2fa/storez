class Product < ApplicationRecord
  belongs_to :branch
  has_many :sales
end
