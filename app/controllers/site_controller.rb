class SiteController < ApplicationController
  def index
    @visitors = Visitor.all

  	@last_article = Article.find(:last)

  	@last_event = Event.find(:last)

  	@last_video = Video.find(:last)

  	@last_five_gallery = Gallery.find(:all, :limit => 5, :order => "created_at DESC")

  	@last_four_gallery = Gallery.find(:all, :limit => 4, :order => "created_at DESC")

  	@last_six_presses = Press.find(:all, :limit => 6, :order => "created_at DESC")

  	@last_two_articles = Article.find(:all, :limit => 2, :order => "created_at DESC")

    render :layout => 'home'
  end

  def about
    @visitors = Visitor.all

  	@last_six_presses = Press.find(:all, :limit => 6, :order => "created_at DESC")

  	@last_four_gallery = Gallery.find(:all, :limit => 4, :order => "created_at DESC")

    render :layout => 'static'
  end

  def direction
    @visitors = Visitor.all

  	@last_six_presses = Press.find(:all, :limit => 6, :order => "created_at DESC")

  	@last_four_gallery = Gallery.find(:all, :limit => 4, :order => "created_at DESC")

    render :layout => 'static'
  end

  def welcome
    @visitors = Visitor.all

  	@last_six_presses = Press.find(:all, :limit => 6, :order => "created_at DESC")

  	@last_four_gallery = Gallery.find(:all, :limit => 4, :order => "created_at DESC")

    render :layout => 'static'
  end

  def board
    @visitors = Visitor.all

  	@last_six_presses = Press.find(:all, :limit => 6, :order => "created_at DESC")

  	@last_four_gallery = Gallery.find(:all, :limit => 4, :order => "created_at DESC")

    render :layout => 'static'
  end

  def services
    @visitors = Visitor.all

  	@last_six_presses = Press.find(:all, :limit => 6, :order => "created_at DESC")

  	@last_four_gallery = Gallery.find(:all, :limit => 4, :order => "created_at DESC")

    render :layout => 'static'
  end

  def contact
    @visitors = Visitor.all

  	@last_six_presses = Press.find(:all, :limit => 6, :order => "created_at DESC")

  	@last_four_gallery = Gallery.find(:all, :limit => 4, :order => "created_at DESC")

    render :layout => 'static'
  end

  def portfolio
    @visitors = Visitor.all

  	@last_six_presses = Press.find(:all, :limit => 6, :order => "created_at DESC")

  	@last_four_gallery = Gallery.find(:all, :limit => 4, :order => "created_at DESC")
  end

  def activities
    @visitors = Visitor.all

  	@last_six_presses = Press.find(:all, :limit => 6, :order => "created_at DESC")

  	@last_four_gallery = Gallery.find(:all, :limit => 4, :order => "created_at DESC")

  	render :layout => 'static'
  end

  def funding
    @visitors = Visitor.all

  	@last_six_presses = Press.find(:all, :limit => 6, :order => "created_at DESC")

  	@last_four_gallery = Gallery.find(:all, :limit => 4, :order => "created_at DESC")

  	render :layout => 'static'
  end

  def objectives
    @visitors = Visitor.all

  	@last_six_presses = Press.find(:all, :limit => 6, :order => "created_at DESC")

  	@last_four_gallery = Gallery.find(:all, :limit => 4, :order => "created_at DESC")

  	render :layout => 'static'
  end

  def partners
    @visitors = Visitor.all

  	@last_six_presses = Press.find(:all, :limit => 6, :order => "created_at DESC")

  	@last_four_gallery = Gallery.find(:all, :limit => 4, :order => "created_at DESC")

  	render :layout => 'static'
  end

  def structure
    @visitors = Visitor.all

  	@last_six_presses = Press.find(:all, :limit => 6, :order => "created_at DESC")

  	@last_four_gallery = Gallery.find(:all, :limit => 4, :order => "created_at DESC")

  	render :layout => 'static'
  end

  def targets
    @visitors = Visitor.all

  	@last_six_presses = Press.find(:all, :limit => 6, :order => "created_at DESC")

  	@last_four_gallery = Gallery.find(:all, :limit => 4, :order => "created_at DESC")

  	render :layout => 'static'
  end

  def view
    @visitors = Visitor.all

  	@last_six_presses = Press.find(:all, :limit => 6, :order => "created_at DESC")

  	@last_four_gallery = Gallery.find(:all, :limit => 4, :order => "created_at DESC")

  	render :layout => 'static'
  end
end

