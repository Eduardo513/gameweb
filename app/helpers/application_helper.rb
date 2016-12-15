module ApplicationHelper

	def signed_in?
		if session[:user_id].nil?
			return
		else
			@current_user = User.find_by_id(session[:user_id])
		end
	end
	
	def admin?
		if session[:user_id].nil? 
			return false
		else	
			signed_in? == true
			@current_user.username == "admin"
			
		end
	
	end
end

