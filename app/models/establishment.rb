class Establishment < ActiveRecord::Base

    attr_accessible :name, :city, :state, :neighborhood, :address, :zipcode, :avatar, :status

    belongs_to :users
    has_many :menus

    has_attached_file :avatar, :styles => { :medium => "150x", :thumb => "100x100>" },   :default_url => "sem-imagem.jpg"
  validates_attachment_content_type :avatar, :content_type => %w(image/jpeg image/jpg image/png)

  #scope :com_idade_maior_que, lambda {|name| where("name like  ?", name).order(:name) }

    scope :find_by_name, -> (name) {
        where("name like ?", "#{name}%")
    }

    default_scope {order(:name)}



end
