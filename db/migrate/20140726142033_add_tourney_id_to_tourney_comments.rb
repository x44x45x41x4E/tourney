class AddTourneyIdToTourneyComments < ActiveRecord::Migration
  def change
    add_reference :tourney_comments, :tourney, index: true
  end
end
