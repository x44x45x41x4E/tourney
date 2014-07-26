class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :name
      t.references :game_type, index: true

      t.timestamps
    end
  end
end
