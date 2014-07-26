class CreateGameModes < ActiveRecord::Migration
  def change
    create_table :game_modes do |t|
      t.string :gamemode_name

      t.timestamps
    end
  end
end
