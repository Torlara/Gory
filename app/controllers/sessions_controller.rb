class SessionsController < ApplicationController

  def new
    render 'new'
  end

  def create
    user = User.find_by_email(params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
<<<<<<< HEAD
      #session[:user_id] = user.id
      sign_in user
=======
      session[:user_id] = user.id
>>>>>>> 60a746404b5802cc3eef893f2a73684c70e89d5c
      redirect_to user
    else
      flash.now[:error] = 'Invalid email/password combination'
      render 'new'
    end
  end

  def destroy
<<<<<<< HEAD
    sign_out
    redirect_to root_url
=======
>>>>>>> 60a746404b5802cc3eef893f2a73684c70e89d5c
  end
end