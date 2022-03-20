class FeedsController < ApplicationController
	before_action :authenticate_user!
	layout "feeds"

	def index
		@users = User.where.not(id: current_user.id).order(created_at: 'DESC').paginate(:page => params[:page], :per_page => 8)
	end
end