class CreateChefs < ActiveRecord::Migration
  def change
    create_table :chefs do |t|
      t.string :name
      t.string :email
      t.text :recipes

      t.timestamps
    end
  end
end
