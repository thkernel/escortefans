class HomeController < ApplicationController
    layout "home"
    # Index
    def index
    	@page_description = APPLICATION_DESCRIPTION
		@page_keywords    = APPLICATION_KEYWORDS
    end
    
end