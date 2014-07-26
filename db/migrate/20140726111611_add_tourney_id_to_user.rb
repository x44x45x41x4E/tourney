class AddTourneyIdToUser < ActiveRecord::Migration
  def change
    add_column :users, :tourney_id, :integer
  end
end
