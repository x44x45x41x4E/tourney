class CreateRsvpStats < ActiveRecord::Migration
  def change
    create_table :rsvp_stats do |t|
      t.string :rsvp_stat
      t.references :user, index: true

      t.timestamps
    end
  end
end
