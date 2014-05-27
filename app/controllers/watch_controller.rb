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
			redirect_to(:action => 'home')
		end
	end


	private #--------------------------

	def contact_params
		params.require(:contact).permit(:name, :email, :content)
	end

end