class CreateVenues < ActiveRecord::Migration
  def change
    create_table :venues do |t|
      t.integer :venue_id
      t.string :venue_adress
      t.string :venue_desc
      t.float :venue_lat
      t.float :venue_long

      t.timestamps
    end
  end
end
