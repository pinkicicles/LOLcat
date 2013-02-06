class CreateSponsors < ActiveRecord::Migration
  def change
    create_table :sponsors do |t|
      t.string :Name
      t.string :Company
      t.integer :Donation
      t.string :Email

      t.timestamps
    end
  end
end
