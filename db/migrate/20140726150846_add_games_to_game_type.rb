class AddGamesToGameType < ActiveRecord::Migration
  def change
    add_reference :game_types, :game, index: true
  end
end
