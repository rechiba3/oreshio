class User < ActiveRecord::Base
	attr_accessible :name
  
  has_many :stories, :through => :story_users, :dependent => :destroy
  has_many :stories, :dependent => :destroy
  has_many :oauths, :dependent => :destroy
end
