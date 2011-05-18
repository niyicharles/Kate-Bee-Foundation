class GalleriesController < ApplicationController
  before_filter :authorize, :except => [:index, :show]
  layout 'admin_edit'

  def index
    @galleries = Gallery.all

    @galleries = Gallery.paginate :per_page => 20, :page => params[:page], :order => 'created_at DESC'

  	@last_six_presses = Press.find(:all, :limit => 5, :order => "created_at DESC")

    render :layout => 'site'
  end

  def show
  	@last_six_presses = Press.find(:all, :limit => 6, :order => "created_at DESC")

    @gallery = Gallery.find(params[:id])

    render :layout => 'site'
  end

  def new
    @gallery = Gallery.new
  end

  def create
    @gallery = Gallery.new(params[:gallery])
    if @gallery.save
      flash[:notice] = "Successfully created gallery."
      redirect_to @gallery
    else
      render :action => 'new'
    end
  end

  def edit
    @gallery = Gallery.find(params[:id])
  end

  def update
    @gallery = Gallery.find(params[:id])
    if @gallery.update_attributes(params[:gallery])
      flash[:notice] = "Successfully updated gallery."
      redirect_to @gallery
    else
      render :action => 'edit'
    end
  end

  def destroy
    @gallery = Gallery.find(params[:id])
    @gallery.destroy
    flash[:notice] = "Successfully destroyed gallery."
    redirect_to galleries_url
  end
end

