class WatchController < ApplicationController

	layout 'application'
	def home
		@serials = Serial.all.paginate(:page => params[:page], :per_page => 2)
		@season = Season.all.sorted.first
	end

	def serial
		@serial = Serial.where(:id => params[:id]).first
	end

	def season
		@season = Season.where(:id => params[:id]).first
	end

	def episode
		@call = false
		@episode = Episode.where(:id => params[:id], :visibility => true).first
		@episode.veiws = @episode.veiws + 1
		@episode.save

		@reveiws = Comment.where(:episode_id => @episode.id).newest_first
		@comment = Comment.new
	end

	def like
		@call = true
		@episode = Episode.where(:id => params[:id]).first
		@episode.likes = @episode.likes + 1
		@episode.save
		respond_to do |format|
        format.html {  }
        format.json { }
        format.js {}
    end
	end

	def about
	end

	def contact
		@contact = Contact.new
	end

	def contact_create
		@contact = Contact.new(contact_params)
		if @contact.save
			flash[:notice] = "Thank You for your suggestion."
			redirect_to(:action => 'contact')
		else
			flash[:notice] = "Sorry Cant Submit Your Suggestion."
			redirect_to(:action => 'contact')
		end
	end

	def login
	end

	def logout
    session[:username] = nil
    flash[:notice] = "You are now logged out."
    redirect_to(:back)
  	end

	def user_login
  	if params[:username].present? && params[:password].present?
  		user = User.where(:username => params[:username]).first
  		if user
  			true_user = user.authenticate(params[:password])
  		end
  	end
  	if true_user
  		session[:username] = true_user.username
  		flash[:notice] = "You are now logged in."
  		redirect_to(:action => 'home')
  	else
  		flash[:notice] = "Username/password combination not correct"
  		redirect_to(:action => 'login')
  end
end
	
	def signup
		@user = User.new
	end

	def user_create
		@user = User.new(user_params)
		if @user.save
			flash[:notice] = "Your account has been created."
			redirect_to(:action => 'home')
			session[:username] = @user.username
		else
			flash[:notice] = "Sorry your account can't be created at this moment."
			redirect_to(:action => 'signup')
		end
	end

	def create_comment
		@comment = Comment.new(comment_params)
		if @comment.save
			flash[:notice] = "Comment Posted Successfully."
			redirect_to(:back)
		else
			flash[:notice] = "Sorry your comment can't be posted."
			redirect_to(:back)
		end
	end



	private #--------------------------

	def contact_params
		params.require(:contact).permit(:name, :email, :content)
	end

	def user_params
      params.require(:user).permit(:username, :email, :password, :password_confirmation)
    end

    def comment_params
      params.require(:comment).permit(:username, :episode_id, :content)
    end

end