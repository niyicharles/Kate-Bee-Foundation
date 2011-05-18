class VisitorsController < ApplicationController
  def index
    @visitors = Visitor.all
  end

  def show
    @visitor = Visitor.find(params[:id])
  end

  def new
    @visitor = Visitor.new
  end

  def create
    @visitor = Visitor.new(params[:visitor])
    if @visitor.save
      flash[:notice] = "Successfully created visitor."
      redirect_to @visitor
    else
      render :action => 'new'
    end
  end

  def edit
    @visitor = Visitor.find(params[:id])
  end

  def update
    @visitor = Visitor.find(params[:id])
    if @visitor.update_attributes(params[:visitor])
      flash[:notice] = "Successfully updated visitor."
      redirect_to @visitor
    else
      render :action => 'edit'
    end
  end

  def destroy
    @visitor = Visitor.find(params[:id])
    @visitor.destroy
    flash[:notice] = "Successfully destroyed visitor."
    redirect_to visitors_url
  end
end
