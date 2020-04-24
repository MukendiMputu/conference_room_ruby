class LoginController < ApplicationController

  def index
    # Just renders the signin form
  end

  def create
    # checks presence of email and password and..
    if !(params[:email].blank? && params[:password].blank?)
      found_user = User.find_by_email(params[:email])
      if found_user
        # verify password
        if found_user.authenticate(params[:password])
          session[:user_id] = found_user.id
          # ... redirect to show action
          redirect_to(login_path(found_user.id))
        else
          flash[:error] = "Wrong email/password combination"
          redirect_back fallback_location: root_path
        end
      else
        flash[:error] = "Wrong email/password combination"
        redirect_back fallback_location: root_path
      end 
    else
      flash[:error] = "Please, fill in the fields properly"
      redirect_back fallback_location: root_path
    end
  end
  
  def show
    @user = User.find(params[:id])
    
  end

  def delete
  end

  private

end