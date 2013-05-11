class StoryUser < ActiveRecord::Base
  # attr_accessible :title, :body
  belongs_to :story
  belongs_to :user
  belongs_to :post
end
