class SessionsController < ApplicationController


  def new
    #@session = Session.new
  end


  def create
    
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      reset_session
      log_in(user)
      redirect_to user
    else
      flash.now[:danger] = "Wrong email or password"
      render "new", status: :unprocessable_entity
    end

  end

  


  def destroy
    log_out if logged_in?
    redirect_to login_path
  end






end
