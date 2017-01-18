class Product < ApplicationRecord
  belongs_to :branch, optional: true
  has_many :sales
end
