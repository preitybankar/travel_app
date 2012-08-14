class UsersController < ApplicationController
  
  def new  
    @user = User.new  
  end 
  
  def create  
     @user = User.new(params[:user])  
     if @user.save  
       redirect_to root_url, :notice => "Signed up!"  
     else  
       render "new"  
     end  
   end 
   
   def show_profile
    @user = current_user.profile if current_user.present?
   end

   def new_profile
    @profile = Profile.new
   end

   def profile
    user = current_user
    profile = user.build_profile(params[:profile])
    if profile.save
      flash[:notice] = "Profile saved successfully."
      redirect_to "/show_profile/#{current_user.id}"
    else
      flash[:error] = "Something went wrong."
      redirect_to :back
   end
  end
  
end
