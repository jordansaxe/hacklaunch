class SignUpsController < ApplicationController
  def new
    @sign_up_count = SignUp.count
  end

  def create
    SignUp.create(name: params[:name], email: params[:email])
    redirect_to sign_ups_path
  end
  
  def index
    @sign_up = SignUp.all
  end

  def destroy
    redirect_to sign_ups_path
  end

  def edit
    @sign_up = SignUp.find(params[:id])
  end

  def update
    @sign_up = SignUp.find(params[:id])
    @sign_up.update_attributes(name: params[:name], email: params[:email])
    redirect_to sign_ups_path
  end

  def show
    redirect_to sign_ups_path
  end
end