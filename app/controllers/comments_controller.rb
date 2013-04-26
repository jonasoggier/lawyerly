class CommentsController < ApplicationController

  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.build(params[:comment])
    @comment.user = current_user
    @comment.save

    Notification.create(:user_id => @post.user_id, :commenter_id => @comment.user_id, :post_id => @post.id)

    redirect_to root_path, :notice => "Your comment was successfully submitted."
  end

end
