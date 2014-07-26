class AddGameTypeToTourney < ActiveRecord::Migration
  def change
    add_reference :tourneys, :game_type, index: true
  end
end
