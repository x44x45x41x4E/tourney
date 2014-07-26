class CreateGameTypes < ActiveRecord::Migration
  def change
    create_table :game_types do |t|
      t.string :game_type
      t.references :board, index: true
      t.references :card, index: true
      t.references :videogame, index: true
      t.references :sports, index: true

      t.timestamps
    end
  end
end
