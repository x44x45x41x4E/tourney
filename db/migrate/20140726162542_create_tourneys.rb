class CreateTourneys < ActiveRecord::Migration
  def change
    create_table :tourneys do |t|
      t.string :title
      t.text :desc
      t.references :tourney_type, index: true
      t.references :tourney_comment, index: true
      t.references :tourney_comments, index: true
      t.datetime :start_date
      t.datetime :end_date
      t.references :user, index: true
      t.references :venue, index: true
      t.references :game_type, index: true

      t.timestamps
    end
  end
end
