class EventsController < ApplicationController
  before_filter :authorize, :except => [:index, :show]
  layout 'admin_edit'

  def index
  	@last_six_presses = Press.find(:all, :limit => 6, :order => "created_at DESC")

    @events = Event.all

    @events = Event.paginate  :per_page => 5, :page => params[:page],
    							            :order => 'created_at DESC'

    render :layout => 'site'
  end

  def show
  	@last_six_presses = Press.find(:all, :limit => 6, :order => "created_at DESC")

    @event = Event.find(params[:id])

    render :layout => 'site'
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(params[:event])
    if @event.save
      flash[:notice] = "Successfully created event."
      redirect_to @event
    else
      render :action => 'new'
    end
  end

  def edit
    @event = Event.find(params[:id])
  end

  def update
    @event = Event.find(params[:id])
    if @event.update_attributes(params[:event])
      flash[:notice] = "Successfully updated event."
      redirect_to @event
    else
      render :action => 'edit'
    end
  end

  def destroy
    @event = Event.find(params[:id])
    @event.destroy
    flash[:notice] = "Successfully destroyed event."
    redirect_to events_url
  end
end

