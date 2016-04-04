class SessionsController < ApplicationController
  def new
  end
  def create
    login1 = Login1.find_by_Email(params[:Email])
    if login1 && user.authenticate(params[:password])
      session[:login1s_id] = login1.id
      redirect_to root_url, notice: 'Logged in!'
    else
      render :new
    end
  end
  def destroy
    session[:login1s_id] = nil
    redirect_to root_url, notice: 'Logged out!'
  end
end
