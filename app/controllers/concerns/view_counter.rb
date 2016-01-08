 module ViewCounter
  	extend ActiveSupport::Concern

  def track_views
  	if session[:counter].nil?
  		session[:counter] = 0
  		@view_count = session[:counter]
  	else
  		session[:counter] += 1
  		@view_count = session[:counter]
  	end
  end

  def reset_views
  	session[:counter] = 0
    @view_count = session[:counter]
  end
end
