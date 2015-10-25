class Menu < ActiveRecord::Base

    attr_accessible :data, :weekday, :price, :status, :establishment_id

    belongs_to :establishment
    has_many :items
end
