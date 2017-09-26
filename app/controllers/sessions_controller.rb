class SessionsController < ApplicationController
  # skip_before_action :verify_authenticity_token, :only => :create

  def new
    render 'new.html.erb'
  end

  def create
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      # flash[:success] = 'Successfully logged in!'
      render json: user, status: :ok
      # redirect_to '/suitcase'
    else
      # flash[:warning] = 'Invalid username and/or password!'
      render json: { message: 'totally off' }, status: 403
      # redirect_to '/login'
    end
  end

  def destroy
    session[:user_id] = nil
    # flash[:success] = 'Successfully logged out!'
    redirect_to '/login'
  end

  def error_message
    {
      message: 'invalid'
    }
  end
end