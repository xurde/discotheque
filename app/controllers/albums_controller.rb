class AlbumsController < ApplicationController
  
  before_filter :authenticate_user!
  
  def index
    @albums = current_user.albums.all
  end
  
  def new
    @album = Album.new
  end
  
  def create
    @album = Album.new(params[:album])
    @album.user = current_user
    if @album.save
      flash[:notice] = "Album #{@album.title} added successfully"
      redirect_to album_path(:id => @album.id)
    else
      render :action => 'new'
    end
  end
  
  def show
    @album = Album.find(params[:id])
    if @album
      render
    else
      render :file => 'public/404', :status => 404
    end
  end
  
  def search
    @albums = current_user.albums.find(:all, :conditions => "band LIKE '%#{params[:querystring]}%' OR title LIKE '%#{params[:querystring]}%'")
  end
  
end
