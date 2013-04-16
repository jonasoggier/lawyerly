module RelationshipsHelper

	def following?
		true if current_user.relationships.where(:followed_user_id => params[:id]).count == 1 # checks whether there is a relationship
	end

	def unfollow_path
		current_user.relationships.where(:followed_user_id => params[:id]).first # returns followed_user instance / there is always only one in the DB (thus first is okay)
	end

end
