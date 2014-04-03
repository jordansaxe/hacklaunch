class SignupsController < ApplicationController
  def new
  end

  def create
    SignUp.create(name: params[:name], email: params[:email])
    redirect_to signups_path
  end
  
  def index
    @sign_ups = SignUp.all
  end

  def destroy
    redirect_to signups_path
  end
end
