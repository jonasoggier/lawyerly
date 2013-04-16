class User < ActiveRecord::Base
  authenticates_with_sorcery!

  has_many :posts

  attr_accessible :first_name, :last_name, :email, :teaser, :description, :password, :password_confirmation

  validates_length_of :password, :minimum => 5, :message => "Password must be at least 5 characters long", :if => :password
  validates_confirmation_of :password, :message => "Password should match confirmation", :if => :password
  validates :email, :presence => true, :uniqueness => true
  
end