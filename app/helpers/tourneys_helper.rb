module TourneysHelper
	def user_tourneys
		JoinTourney.where(:tourney_id=>params[:id])
	end
end
