class AddColumnCityIdToEstablishment < ActiveRecord::Migration
  def change
    add_column :establishments, :city_id, :integer
  end
end
