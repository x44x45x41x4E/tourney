class AddRsvpStatToTourney < ActiveRecord::Migration
  def change
    add_reference :tourneys, :rsvp_stats, index: true
  end
end
