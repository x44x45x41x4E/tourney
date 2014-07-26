class CreateTourneyComments < ActiveRecord::Migration
  def change
    create_table :tourney_comments do |t|
      t.text :message
      t.references :user, index: true

      t.timestamps
    end
  end
end
