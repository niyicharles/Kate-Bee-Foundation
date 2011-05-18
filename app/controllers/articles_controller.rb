class ArticlesController < ApplicationController
  before_filter :authorize, :except => [:index, :show]
  layout 'admin_edit'

  def index
  	@last_six_presses = Press.find(:all, :limit => 6, :order => "created_at DESC")

    @articles = Article.all

    @articles = Article.paginate  :per_page => 4, :page => params[:page],
    							                :order => 'created_at DESC'

    render :layout => 'site'
  end

  def show
  	@last_six_presses = Press.all

    @article = Article.find(params[:id])

    render :layout => 'site'
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(params[:article])
    if @article.save
      flash[:notice] = "Successfully created article."
      redirect_to @article
    else
      render :action => 'new'
    end
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])
    if @article.update_attributes(params[:article])
      flash[:notice] = "Successfully updated article."
      redirect_to @article
    else
      render :action => 'edit'
    end
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy
    flash[:notice] = "Successfully destroyed article."
    redirect_to articles_url
  end
end

