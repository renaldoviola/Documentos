class Api::V1::MenuSerializer < ActiveModel::Serializer
  attributes :id ,:data , :weekday , :price , :status, :establishment_id

  #has_many :items

end
