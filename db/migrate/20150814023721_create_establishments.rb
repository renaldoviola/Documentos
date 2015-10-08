class CreateEstablishments < ActiveRecord::Migration
  def change
    create_table :establishments do |t|
      t.string :name
      t.string :city
      t.string :state
      t.string :neighborhood
      t.string :address
      t.integer :zipcode
      t.string :avatar
      t.boolean :status
      t.date :creation

      t.timestamps null: false
    end
  end
end
