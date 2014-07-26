class CreateVideoGames < ActiveRecord::Migration
  def change
    create_table :video_games do |t|
      t.integer :video_game_id
      t.string :video_game_name

      t.timestamps
    end
  end
end
