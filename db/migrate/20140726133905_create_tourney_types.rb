class CreateTourneyTypes < ActiveRecord::Migration
  def change
    create_table :tourney_types do |t|
      t.string :tourney_name

      t.timestamps
    end
  end
end
