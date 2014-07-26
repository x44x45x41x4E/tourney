class PagesController < ApplicationController
  
  def index
  	@newest_casuals = Tourney.where(:tourney_type_id => 2).order("created_at desc").limit(5).includes(:user)
  	@newest_tournaments = Tourney.where(:tourney_type_id => 1).order("created_at desc").limit(5).includes(:user)
  end

end
