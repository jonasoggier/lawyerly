class Company < ActiveRecord::Base
  belongs_to :user
  attr_accessible :address, :city, :description, :email, :name, :teaser
end
