class Relationship < ActiveRecord::Base
  attr_accessible :followed_user_id, :user_id

  belongs_to :user
  belongs_to :followed_user, :class_name => 'User'
end
