class Sale < ApplicationRecord
  belongs_to :branch, optional: true
  belongs_to :product
  belongs_to :agent
end
