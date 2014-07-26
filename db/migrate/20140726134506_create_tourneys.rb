class CreateTourneys < ActiveRecord::Migration
  def change
    create_table :tourneys do |t|
      t.string :title
      t.text :tourney_desc
      t.references :tourneytypes, index: true
      t.references :tourneycomments, index: true
      t.references :schedules, index: true
      t.references :venues, index: true
      t.references :users, index: true
      t.references :gametypes, index: true
      t.references :rsvp_stats, index: true

      t.timestamps
    end
  end
end
