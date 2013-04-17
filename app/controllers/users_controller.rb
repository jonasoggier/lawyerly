class UsersController < ApplicationController
  
  skip_before_filter :require_login, :only => [:create]

  # "new action" is on homepage (home#index) 

  def show
    @user = User.find(params[:id]) 
    @post = Post.new # needed as input for new posts form
    @posts = @user.posts # needed to display list of all posts
  end

  def create
  	@user = User.new(params[:user])
  	if @user.save
  		auto_login(@user)
  		redirect_to @user, notice: "Account successfully created."
  	else
  		render :new # TODO
  	end
  end

  def edit
    if current_user == User.find(params[:id]) # TBD if this is sufficient protection!
      @user = User.find(params[:id])   
    end
  end

  def update  
    if current_user == User.find(params[:id]) # TBD if this is sufficient protection!
      @user = User.find(params[:id]) 
      if @user.update_attributes(params[:user])  
        redirect_to @user, notice: "Profile successfully updated." 
      else
        # do something else TODO
      end
    end
  end

  def destroy
    if current_user == User.find(params[:id]) # TBD if this is sufficient protection!
      @user = User.find(params[:id])
      @user.destroy
      redirect_to root_path
    end
  end

end