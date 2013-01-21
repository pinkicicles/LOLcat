class CreateCulinaries < ActiveRecord::Migration
  def change
    create_table :culinaries do |t|
      t.string :Artist
      t.string :Name
      t.text :Dishes
      t.string :Location

      t.timestamps
    end
  end
end
