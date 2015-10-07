class Establishment < ActiveRecord::Base

    attr_accessible :name, :city, :state, :neighborhood, :address, :zipcode, :avatar, :status

    #has_one :user
    has_many :menu
    has_attached_file :avatar, :styles => { :medium => "150x", :thumb => "100x100>" },   :default_url => "sem-imagem.jpg"
  validates_attachment_content_type :avatar, :content_type => %w(image/jpeg image/jpg image/png)
end
