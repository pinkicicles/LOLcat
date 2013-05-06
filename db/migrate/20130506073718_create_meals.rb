class CreateMeals < ActiveRecord::Migration
  def change
    create_table :meals do |t|
      t.string :name
      t.string :chef
      t.date :date
      t.time :pickup_time
      t.text :location
      t.text :description

      t.timestamps
    end
  end
end
