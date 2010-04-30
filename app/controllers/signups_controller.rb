class SignupsController < ApplicationController
  def new
    @signup = Signup.new
  end
  
  def create
    @signup = Signup.new(params[:signup])
    if @signup.save
      flash[:notice] = "Successfully created signup."
      redirect_to root_url
    else
      render :action => 'new'
    end
  end
end
