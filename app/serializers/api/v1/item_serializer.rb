class Api::V1::ItemSerializer < ActiveModel::Serializer
  attributes :id, :plate, :status, :menu_id

end
