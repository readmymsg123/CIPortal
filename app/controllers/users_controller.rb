class UsersController < ApplicationController
  def profile
    @user = current_user
    @count = Post.count(:conditions => "user_id = #{@user.id}")
  end   
  
  
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(params[:user])
    if @user.save
      flash[:notice] = "Registration Successful"
      redirect_to posts_path
    else
      render :action => 'new'
    end
  end
  
  def edit
    @user = current_user
  end
  
  def update
    @user = current_user
    if @user.update_attributes(params[:user])
      flash[:notice] = "Successfully updated user."
      redirect_to posts_path
    else
      render :action => 'edit'
    end
  end
end
