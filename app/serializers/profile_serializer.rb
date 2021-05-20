class ProfileSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :birthdate, :gender
  has_one :user
end
