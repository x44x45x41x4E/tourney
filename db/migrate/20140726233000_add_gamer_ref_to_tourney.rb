class AddGamerRefToTourney < ActiveRecord::Migration
  def change
    add_reference :tourneys, :game, index: true
  end
end
