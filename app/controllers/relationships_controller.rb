class RelationshipsController < ApplicationController
  
  def create
  	@relationship = current_user.relationships.build(:followed_user_id => params[:followed_user_id])
	  @relationship.save

	  respond_to do |format|
      format.html { redirect_to current_user }
      format.js
    end
	end

  def destroy
	  @relationship = current_user.relationships.find(params[:id])
    @user = @relationship.followed_user
	  @relationship.destroy

	  respond_to do |format|
      format.html { redirect_to current_user }
      format.js
    end
	end
end
