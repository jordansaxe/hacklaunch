class SignupController < ApplicationController
  def view
    @hide_form = false
    if params[:hide_form] == 'true'
      @hide_form =true
    end
  end

  def show_confirm
    @email = params[:email]
    flash[:notice] = "Thanks for signing up!"
    redirect_to('/?hide_form=true')
  end
end
