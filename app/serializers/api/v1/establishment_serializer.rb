class Api::V1::EstablishmentSerializer < ActiveModel::Serializer
  attributes :id, :name, :city, :state, :neighborhood, :address, :zipcode, :avatar, :status

  has_many :menus
end
