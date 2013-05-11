class Item < ActiveRecord::Base
  # attr_accessible :title, :body

  #しおり
  belongs_to :story
end
