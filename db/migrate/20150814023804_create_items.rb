class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :plate
      t.boolean :status

      t.timestamps null: false
    end
  end
end
