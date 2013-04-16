class PostsController < ApplicationController

  skip_before_filter :require_login

  # The 'new action' is 'included' under views/users/show

	def create
    @user = User.find params[:user_id]  # evt put into separate 'require_user' method
  	@post = @user.posts.build params[:post]
  	if @post.save
  		redirect_to current_user, notice: "Post successfully published."
  	else
  		render :new # TODO
  	end
  end

end
