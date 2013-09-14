class SessionsController < ApplicationController
  def new
  end

  def create

     @email=params[:email]
     @password = params[:password]
     member = User.where(:email=>@email , :password =>@password).first
     if member

     	session[:email]=member.email
      session[:id] = member.id 
     	flash[:notice]="Successfully Logged in"
        redirect_to member_one_path
      else
       flash[:notice] = "Login Failure"
       redirect_to login_path
   end 
  end


  def destroy
    session[:email]=nil
    flash[:notice]="You have successfully logged out"
    redirect_to login_path
  end
end
