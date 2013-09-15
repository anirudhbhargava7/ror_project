class MemberProfilesController < ApplicationController
  def index
    @name=User.where(:email=>session[:email]).first.name
    session[:name]=@name
    @pro=MemberProfile.select([:age, :location, :desc]).where(:email=>session[:email]).first
  end

  def new
    @pro=MemberProfile.new
  end

  def create
    
  # session[:age]=params[:profile][:age]
   #session[:location]=params[:profile][:location]
   #session[:desc]=params[:profile][:desc]

  @pro = MemberProfile.create(:email=>session[:email],:age=>params[:profile][:age],:location=>params[:profile][:location],:desc=>params[:profile][:desc])

    flash[:alert]=nil
   if @pro.save
       flash[:status] = true
       flash[:alert] ="Profile Created!"
      else
      flash[:status] = false
      flash[:alert] = @pro.errors.full_messages 
      end
      redirect_to member_one_path
  end

  def edit
  
    @pro = MemberProfile.where(:email => session[:email]).first
    @name=session[:name]

  end

  def update 
    @pro = MemberProfile.where(:email => session[:email]).first  
    
    @pro.update_attributes(:age => params[:member_profile][:age] , :location =>params[:member_profile][:location] , :desc => params[:member_profile][:desc])
   if @pro.save
       flash[:status] = true
       flash[:alert] ="Profile Updated!"
       else
       flash[:status] = false
       flash[:alert] = @pro.errors.full_messages 
      end
      redirect_to member_one_path     
  end

  def destroy
  end
end
