class Agent < ApplicationRecord
  belongs_to :branch
  has_many :sales
end
