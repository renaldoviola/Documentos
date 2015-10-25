class Api::V1::MenuSerializer < ActiveModel::Serializer
  attributes :id ,:data , :weekday , :price , :status

  has_many :items

end
