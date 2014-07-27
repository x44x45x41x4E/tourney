class CreateJoinTourneys < ActiveRecord::Migration
  def change
    create_table :join_tourneys do |t|
      t.references :user, index: true
      t.references :Tourney, index: true

      t.timestamps
    end
  end
end
