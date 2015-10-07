class AddColumnEstablishmentIdToMenu < ActiveRecord::Migration
  def change
    add_column :menus, :establishment_id, :integer
  end
end
