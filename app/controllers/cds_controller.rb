class CdsController < ApplicationController
  def index
    @cds = Cd.all
    @songs = Song.all
  end

  def show
    @cd = Cd.find(params[:id])
  end

  def new
    @cd = Cd.new
  end

  def create
    @cd = Cd.new(params[:cd])
    if @cd.save
      flash[:notice] = "Successfully created cd."
      redirect_to cds_path
    else
      render :action => 'new'
    end
  end

  def edit
    @cd = Cd.find(params[:id])
  end

  def update
    @cd = Cd.find(params[:id])
    if @cd.update_attributes(params[:cd])
      flash[:notice] = "Successfully updated cd."
      redirect_to @cd
    else
      render :action => 'edit'
    end
  end

  def destroy
    @cd = Cd.find(params[:id])
    @cd.destroy
    flash[:notice] = "Successfully destroyed cd."
    redirect_to cds_url
  end
  
  def ac
    values = Cd.ac(params[:term]).collect{|name| {:value => name.id, :label => "#{name.name}", :category => "CDs"}} << Song.ac(params[:term]).collect{|name| {:value => name.id, :label => "#{name.name}", :category => "Songs"}}
    logger.info "**** #{values.size} *****"
    #render :json => Cd.ac(params[:term]).collect{|name| {:value => name.id, :label => "#{name.name}", :cat => "CD"}}
    render :json => values.flatten
  end
end
