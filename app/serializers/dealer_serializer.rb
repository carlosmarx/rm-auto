class DealerSerializer < ActiveModel::Serializer
  attributes :id, :name, :status
  has_one :group
end
