class RelationshipsController < ApplicationController
  
  def create
		@relationship = current_user.relationships.build(:followed_user_id => params[:followed_user_id])
	  if @relationship.save
	    flash[:notice] = "You are now following xxx ."
	    redirect_to current_user
	  else
	    flash[:notice] = "Unable to follow xxx."
	    redirect_to current_user
	  end
	end

  def destroy
	  @relationship = current_user.relationships.find(params[:id])
	  @relationship.destroy
	  flash[:notice] = "You have succesfully unfollowed xxx."
	  redirect_to current_user
	end
end
