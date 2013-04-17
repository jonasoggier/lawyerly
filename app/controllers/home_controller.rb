class HomeController < ApplicationController

	skip_before_filter :require_login  # TBD if sufficient from security perspective!

	# -- This method changes the author of the posts to current_user... no idea why--
	# def index	# TBD if ok from performance perspective...
	# 	if logged_in?
	# 		@posts = current_user.posts 
	# 		current_user.followed_users.each do |followed_user|
	# 			followed_user.posts.each do |post|
	# 				@posts << post
	# 			end
	# 		end
	# 		@posts
	# 	end
	# end

	def index
		if logged_in?
      @feed_items = current_user.feed
    end
	end


	
end