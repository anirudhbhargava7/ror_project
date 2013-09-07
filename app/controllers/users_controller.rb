class UsersController < ApplicationController
  def index
  end

  def show
  end

  def new
      @user=User.new

  end

  def create
    
          
     @user = User.new(params[:user])
    
      if @user.save
      flash[:status] = true
      flash[:alert] ="Registered Successfully!"
     else
     flash[:status] = false
     flash[:alert] = @user.errors.full_messages 
     end
     redirect_to register_path
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
