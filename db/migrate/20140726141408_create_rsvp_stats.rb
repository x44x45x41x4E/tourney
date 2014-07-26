class CreateRsvpStats < ActiveRecord::Migration
  def change
    create_table :rsvp_stats do |t|
      t.string :status
      t.references :users, index: true
      t.references :tourneys, index: true

      t.timestamps
    end
  end
end
