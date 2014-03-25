class SignupController < ApplicationController
  def view
    @hide_form = false
    if params[:hide_form] == 'true'
      @hide_form =true
    end
  end

  def view
    @sign_up_count = SignUp.count
  end

  def show_confirm
    @sign_up = SignUp.new
    @sign_up.name = params[:name]
    @sign_up.email = params[:email]
    
    if @sign_up.name == "" and @sign_up.email == ""
      flash[:error] = "You didn't enter in anything"
      redirect_to('/?hide_form=false')
    elsif SignUp.find_by(email: params[:email])
      flash[:error] = "You entered in an email address that was already taken"
      redirect_to('/?hide_form=false')
    elsif @sign_up.email contains

    else
      @sign_up.save
      flash[:notice] = "Thanks for signing up!"
      redirect_to('/?hide_form=true')
    end
  end
end
