class SongsController < ApplicationController
  def index
  end

  def new
  	@song = Song.new	
  	value= params[:param]
  	puts value+"Hellllllllllllllllllllo"
  end


  def create
  @song = Song.new(params[:song])
 if @song.save
 flash[:status] = true
 flash[:alert] ="Song Uploaded!"
 else
 flash[:status] = false
 flash[:alert] = @song.errors.full_messages
 end
 redirect_to playlists_path
  end


  def edit
  end

  def show
  end
end
