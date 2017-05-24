class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  private #-----------------------------------

  def confirm_user
  	if session[:admin_username]
  		return true
  	else
  		flash[:notice] = "please login"
  		redirect_to(:controller => 'entry', :action => 'login')
  		return false
  end
 end
end
