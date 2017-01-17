class StoreSerializer < ActiveModel::Serializer
  attributes :id, :name, :manager, :telephone
end
