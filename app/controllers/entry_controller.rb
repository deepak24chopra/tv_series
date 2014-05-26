class EntryController < ApplicationController
  
  before_action :confirm_user, :except => [:login, :attempt_login, :logout]

  def login
  end

  def list
  end

  def attempt_login
  	if params[:username].present? && params[:password].present?
  		user = AdminUser.where(:username => params[:username]).first
  		if user
  			true_user = user.authenticate(params[:password])
  		end
  	end
  	if true_user
  		session[:username] = true_user.username
  		flash[:notice] = "You are logged in."
  		redirect_to(:action => 'list')
  	else
  		flash[:notice] = "Username/password combination not correct"
  		redirect_to(:action => 'login')
  end
end

	def logout
    session[:username] = nil
    flash[:notice] = "Logged out"
    redirect_to(:action => "login")
  end

end