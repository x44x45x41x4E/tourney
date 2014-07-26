class UserController < ApplicationController
	def index
		@user = User.find(current_user.id)
	end

	def members_dashboard
		@user = User.find(params[:id])

		render :index
	end
end
