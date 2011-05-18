class VideosController < ApplicationController
  before_filter :authorize, :except => [:index, :show]
  layout 'admin_edit'

  def index
  	@last_six_presses = Press.find(:all, :limit => 6, :order => "created_at DESC")

    @videos = Video.all

    @videos = Video.paginate  :per_page => 20, :page => params[:page],
    							            :order => 'created_at DESC'

    render :layout => 'site'
  end

  def show
  	@last_six_presses = Press.find(:all, :limit => 6, :order => "created_at DESC")

    @video = Video.find(params[:id])

    render :layout => 'site'
  end

  def new
    @video = Video.new
  end

  def create
    @video = Video.new(params[:video])
    if @video.save
      flash[:notice] = "Successfully created video."
      redirect_to @video
    else
      render :action => 'new'
    end
  end

  def edit
    @video = Video.find(params[:id])
  end

  def update
    @video = Video.find(params[:id])
    if @video.update_attributes(params[:video])
      flash[:notice] = "Successfully updated video."
      redirect_to @video
    else
      render :action => 'edit'
    end
  end

  def destroy
    @video = Video.find(params[:id])
    @video.destroy
    flash[:notice] = "Successfully destroyed video."
    redirect_to videos_url
  end
end

