module UserViewsHelper
	def profile_viewed(user)
		
		unless user.id == current_user.id
			puts "VIEWED"
			user_view = user.user_view
		    
		    if user_view.present?
		    	puts "VIEW PRESENT"
		    	view_number = user_view.number + 1
		      	user_view.update_column(:number, view_number )
		  	else
		  		user_view = user.build_user_view
		  		user_view.number = 1
		  		user_view.save
		  	end
		end
	end
end
