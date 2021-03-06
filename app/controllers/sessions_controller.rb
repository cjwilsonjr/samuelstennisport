class SessionsController < ApplicationController

  skip_before_action :require_login, only: [:new, :create]

  def new
    if request.xhr?
      render "_form", layout: false
    else
      render "new"
    end
  end

  def create
    user = User.find_by_email(params[:session][:email])
    if user && user.authenticate(params[:session][:password])
      flash.now[:active] = "Successful login"
      log_in(user)
      redirect_to customers_path
    else
      flash.now[:danger] = "Invalid email/password"
      render "new"
    end
  end

  def destroy
    log_out
    redirect_to root_path
  end
end