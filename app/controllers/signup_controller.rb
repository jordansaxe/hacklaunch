class SignupController < ApplicationController
  def view
  end

  def show_confirm
    @email = params[:email]
  end
end
