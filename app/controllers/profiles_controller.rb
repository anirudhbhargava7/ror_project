class ProfilesController < ApplicationController
  def index

    
    #@name=User.select(:name).where(:email==session[:email]).first.name
    #@pro=MemberProfile.select([:age ,:desc,:location]).where(:email==session[:email]).first
     
  end

  def new
    @pro = MemberProfile.new
  end

  def create
    
     @pro=MemberProfile.new(params[:usr_profile])

    
  end

  def update
  end

  def show
  end

  def destroy
  end
end
