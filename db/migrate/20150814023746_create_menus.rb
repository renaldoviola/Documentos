class CreateMenus < ActiveRecord::Migration
  def change
    create_table :menus do |t|
      t.datetime :data
      t.string :weekday
      t.string :price
      t.boolean :status

      t.timestamps null: false
    end
  end
end
