class UsersController < ApplicationController
  def new
    form_tag '/login', method: :post do
      label_tag :email
      text_field_tag :email
      label_tag :password
      password_field_tag :password
    submit_tag "Submit"
  end

  def create
    user = User.new(
      name: params[:name],
      email: params[:email],
      mobile_number: params[:mobile_number],
      password: params[:password],
      password_confirmation: params[:password_confirmation]
    )
    if user.save
      session[:user_id] = user.id
      flash[:success] = "Account creation successful!"
      redirect_to "/suitcase"
    else
      flash[:warning] = "Invalid email or password"
      redirect_to "/signup"
    end
  end

  def edit
    @user = current_user;
    @user.id = params[:id]
    render "edit.html.erb"
  end

  def update
    if user.save
      session[:user_id] = user.id
      flash[:success] = "Account update successful!"
      redirect_to "/destinations"
    else
      flash[:warning] = "Invalid email or password"
      render "edit.html.erb"
    end
  end
end