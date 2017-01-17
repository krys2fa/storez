class Store < ApplicationRecord
  has_many :branches
# end
#

# class Store < ActiveRecord::Base

  # Assign an API key on create
  before_create do |store|
    store.api_key = store.generate_api_key
  end

  # Generate a unique API key
  def generate_api_key
    loop do
      token = SecureRandom.base64.tr('+/=', 'Qrt')
      break token unless Store.exists?(api_key: token)
    end
  end
end
