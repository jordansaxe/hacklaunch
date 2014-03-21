class SignupController < ApplicationController
  def view
  end

  def show_confirm
    @email = params[:email]
    flash[:notice] = "Thanks for signing up!"
    redirect_to('/')
  end
end
