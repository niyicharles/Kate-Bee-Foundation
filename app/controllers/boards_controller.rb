class BoardsController < ApplicationController
  before_filter :authorize, :except => [:index, :show]
  layout 'admin_edit'

  def index
    @boards = Board.all

    @boards = Board.paginate :per_page => 20, :page => params[:page], :order => 'created_at DESC'

  	@last_six_presses = Press.find(:all, :limit => 5, :order => "created_at DESC")

  	@last_six_presses = Press.find(:all, :limit => 6, :order => "created_at DESC")

  	@last_four_gallery = Gallery.find(:all, :limit => 4, :order => "created_at DESC")

    render :layout => 'static'
  end

  def show
    @board = Board.find(params[:id])

  	@last_six_presses = Press.find(:all, :limit => 6, :order => "created_at DESC")

    render :layout => 'site'
  end

  def new
    @board = Board.new
  end

  def create
    @board = Board.new(params[:board])
    if @board.save
      flash[:notice] = "Successfully created board."
      redirect_to @board
    else
      render :action => 'new'
    end
  end

  def edit
    @board = Board.find(params[:id])
  end

  def update
    @board = Board.find(params[:id])
    if @board.update_attributes(params[:board])
      flash[:notice] = "Successfully updated board."
      redirect_to @board
    else
      render :action => 'edit'
    end
  end

  def destroy
    @board = Board.find(params[:id])
    @board.destroy
    flash[:notice] = "Successfully destroyed board."
    redirect_to boards_url
  end
end

