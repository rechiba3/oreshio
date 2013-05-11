class Post < ActiveRecord::Base
  has_many :story_users
end
