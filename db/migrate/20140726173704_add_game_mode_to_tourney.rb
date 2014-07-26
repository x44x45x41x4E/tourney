class AddGameModeToTourney < ActiveRecord::Migration
  def change
    add_reference :tourneys, :game_mode, index: true
  end
end
