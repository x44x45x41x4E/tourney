class AddGameTypeToUser < ActiveRecord::Migration
  def change
    add_reference :users, :game_type, index: true
  end
end
