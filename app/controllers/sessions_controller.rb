class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:email]) unless user = User.find_by(name: params[:name])
    # If the user exists AND the password entered is correct.
    if user && user.authenticate(params[:password])
      # Save the user id inside a browser cookie.
      # Specifically, the rails 'session'. This is how we keep the user
      # logged in when they navigate around our website.
      session[:user_id] = user.id
      redirect_to root_url, notice: 'successfully logged in'
    else
      # If user's login doesn't work, send them back to the login form.
      render :new, alert: "username or email did not match"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, notice: 'successfully logged out'
  end
end
