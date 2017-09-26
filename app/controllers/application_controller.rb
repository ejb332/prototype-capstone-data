class ApplicationController < ActionController::API
  # protect_from_forgery unless: -> { request.format.json? }

  # respond_to do |format|
  #   format.json { render json: true }
  # end

  def current_user
    @current_user ||= User.find_by(id: session[:user_id]) if session[:user_id]
  end
  helper_method :current_user

  def authenticate_user!
    redirect_to '/login' unless current_user
  end

  def authenticate_admin!
    redirect_to "/login" unless current_user && current_user.admin
    return
  end
end