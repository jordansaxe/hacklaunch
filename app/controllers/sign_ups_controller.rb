class SignUpsController < ApplicationController
  def new
    @sign_up_count = SignUp.count
    @sign_up = SignUp.new
  end

  def create
    SignUp.create(params.require(:sign_up).permit(:name, :email))
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
    @sign_up.update(params.require(:sign_up).permit(:name, :email))
    redirect_to sign_ups_path
  end

  def show
    
  end
end
