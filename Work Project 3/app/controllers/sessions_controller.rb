class SessionsController < ApplicationController
  def login_page
    user=LoginDatum.find_by_username(params[:username])
    if user&&user.authenticate(params[:password])
      redirect_to candidate_detail_path
    else
      flash.now[:alert]='Incorrect Username or Password'
      render "login_page"
    end
  end

  def signup_page
  end

  def logout
    redirect_to root_path, notice: 'Logged out successfully'
  end

  def admin_page
  end
end
