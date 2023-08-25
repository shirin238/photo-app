class SessionsController < ApplicationController


  def new
    #@session = Session.new
  end


  def create
    
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      redirect_to user_path(user[:id])
    else
      flash[:danger] = "Wrong email or password"
      render "new", status: :unprocessable_entity
    end

  end


  def destroy
    Session.find(params[:id]).destroy
    redirect_to login_path
  end




# private

#   def session_params
#     params.require(:session).permit(:email, :password)
#   end



end
