class Menu < ActiveRecord::Base
    belongs_to :establishment
    has_many :item
end
