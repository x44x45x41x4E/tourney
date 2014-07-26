class CreateVenues < ActiveRecord::Migration
  def change
    create_table :venues do |t|
      t.string :venue_name
      t.text :venue_address
      t.text :venue_desc
      t.float :venue_lat
      t.float :venue_long

      t.timestamps
    end
  end
end
