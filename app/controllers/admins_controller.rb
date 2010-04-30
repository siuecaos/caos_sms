class AdminsController < ApplicationController
  def index
    @admins = Admin.all
  end
  
  def show
    @admin = Admin.find(params[:id])
  end
  
  def new
    @admin = Admin.new
  end
  
  def create
    @admin = Admin.new(params[:admin])
    if @admin.save
      flash[:notice] = "Successfully created admin."
      redirect_to @admin
    else
      render :action => 'new'
    end
  end
  
  def edit
    @admin = Admin.find(params[:id])
  end
  
  def update
    @admin = Admin.find(params[:id])
    if @admin.update_attributes(params[:admin])
      flash[:notice] = "Successfully updated admin."
      redirect_to @admin
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @admin = Admin.find(params[:id])
    @admin.destroy
    flash[:notice] = "Successfully destroyed admin."
    redirect_to admins_url
  end
end
