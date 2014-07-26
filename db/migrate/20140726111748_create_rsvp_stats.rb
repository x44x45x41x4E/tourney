class CreateRsvpStats < ActiveRecord::Migration
  def change
    create_table :rsvp_stats do |t|
      t.integer :tourney_id
      t.string :name
      t.integer :user_id

      t.timestamps
    end
  end
end
