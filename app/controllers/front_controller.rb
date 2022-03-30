class FrontController < ApplicationController
	layout "front"

	def home
		@polls = Poll.order(created_at: :desc).paginate(:page => params[:page], :per_page => 8)
		@page_description = APPLICATION_DESCRIPTION
		@page_keywords    = APPLICATION_KEYWORDS
	end
end