class User < ActiveRecord::Base
  
  authenticates_with_sorcery!

  attr_accessible :first_name, :last_name, :email, :teaser, :description, :password, :password_confirmation, :profile_picture

  has_many :posts, :dependent => :destroy
  has_many :comments, :dependent => :destroy
  has_many :notifications, :dependent => :destroy

  has_many :relationships
  has_many :followed_users, :through => :relationships
  has_many :inverse_relationships, :class_name => "Relationship", :foreign_key => "followed_user_id"
  has_many :inverse_followed_users, :through => :inverse_relationships, :source => :user

  mount_uploader :profile_picture, ProfilePictureUploader

  validates_length_of :password, :minimum => 4, :flash => "Password must be at least 5 characters long", :if => :password
  validates_confirmation_of :password, :flash => "Password should match confirmation", :if => :password
  validates :email, :presence => true, :uniqueness => true

  def feed
    Post.from_users_followed_by(self) 
  end

  def self.search(input)
    search = input.split(" ")
    number_words = search.length
    original_string = 'first_name ILIKE ? OR last_name ILIKE ?'
    string_add = 'OR first_name ILIKE ? OR last_name ILIKE ?'
        
    i = 0
    while i < (number_words - 1) do
       original_string = "#{original_string} #{string_add}"
       i += 1
    end      
  
    # this is an unelegant hack => improve!
    if input
      if number_words == 1
        where original_string, search[0], search[0]
      elsif number_words == 2
        where original_string, search[0], search[0], search[1], search[1]
      elsif number_words == 3
        where original_string, search[0], search[0], search[1], search[1], search[2], search[2]
      elsif number_words == 4
        where original_string, earch[0], search[0], search[1], search[1], search[2], search[2], search[3], search[3]
      end
    else
      scoped
    end
  end
  
end