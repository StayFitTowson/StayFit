class SessionsController < ApplicationController
  def new
  end

  def create
    if auth_hash
      @user = User.from_auth_hash(auth_hash, current_user)
      # if @user.present?
      #  session[:user_id] = @user.id 
      # end
      redirect_to root_url
    else   
      user = User.find_by(email: params[:session][:email].downcase)
      if user && user.authenticate(params[:session][:password])
        if user.activated?
          log_in user
          params[:session][:remember_me] == '1' ? remember(user) : forget(user)
          redirect_back_or user
        else
          message  = "Account not activated. "
          message += "Check your email for the activation link."
          flash[:warning] = message
          redirect_to root_url
        end
      else
        flash.now[:danger] = 'Invalid email/password combination'
        render 'new'
      end
    end
  end

  def destroy
    # Using sessions helper log_out methods
    log_out if logged_in?
    redirect_to root_url
  end
  protected
 
  def auth_hash
    request.env['omniauth.auth']
  end
end
