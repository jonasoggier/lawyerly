class Notification < ActiveRecord::Base
  belongs_to :user
  attr_accessible :user_id, :follower_id, :read

end