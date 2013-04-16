class HomeController < ApplicationController

	skip_before_filter :require_login  # TBD if sufficient from security perspective!

	def index	# TBD if ok from performance perspective...
		if logged_in?
			@posts = current_user.posts 
			current_user.followed_users.each do |followed_user|
				followed_user.posts.each do |post|
					@posts << post
				end
			end
			@posts
		end
	end
	
end