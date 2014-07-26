class CreateVideoGames < ActiveRecord::Migration
  def change
    create_table :video_games do |t|
      t.string :videogame_name

      t.timestamps
    end
  end
end
