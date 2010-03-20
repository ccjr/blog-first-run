class SessionsController < ApplicationController
  def create
    if user = User.authenticate(params[:login], params[:password])
      session[:user_id] = user.id
      redirect_to articles_path, :notice => "Logged in successfully"
    else
      flash.now[:alert] = "Invalid login/password combination"
      render :action => 'new'
    end
  end
end
