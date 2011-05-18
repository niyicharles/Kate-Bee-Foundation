class SponsorsController < ApplicationController
  before_filter :authorize, :except => [:new, :show, :create]
  layout 'admin_edit'

  def index
    @visitors = Visitor.all

  	@last_six_presses = Press.find(:all, :limit => 6, :order => "created_at DESC")

    @sponsors = Sponsor.all

    @sponsors = Sponsor.paginate  :per_page => 5, :page => params[:page],
    							                :order => 'created_at DESC'

    render :layout => 'site'
  end

  def show
  	@last_six_presses = Press.all

    @sponsor = Sponsor.find(params[:id])

    render :layout => 'site'
  end

  def new
    flash[:error] = "Please carefully fill the form. It cannot be edited after submission."

    @projects = Project.all

    @sponsor = Sponsor.new
  end

  def create
    @sponsor = Sponsor.new(params[:sponsor])
    if @sponsor.save
      flash[:notice] = "Successfully set up a sponsorship task."
      redirect_to @sponsor
    else
      render :action => 'new'
    end
  end

  def edit
    @projects = Project.all

    @sponsor = Sponsor.find(params[:id])
  end

  def update
    @sponsor = Sponsor.find(params[:id])
    if @sponsor.update_attributes(params[:sponsor])
      flash[:notice] = "Successfully updated a sponsorship task."
      redirect_to @sponsor
    else
      render :action => 'edit'
    end
  end

  def destroy
    @sponsor = Sponsor.find(params[:id])
    @sponsor.destroy
    flash[:notice] = "Successfully removed a sponsorship task."
    redirect_to sponsors_url
  end
end

