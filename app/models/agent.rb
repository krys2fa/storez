class Agent < ApplicationRecord
  belongs_to :branch, optional: true
  has_many :sales
end
