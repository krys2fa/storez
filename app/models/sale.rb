class Sale < ApplicationRecord
  belongs_to :branch
  belongs_to :product
  belongs_to :agent
end
