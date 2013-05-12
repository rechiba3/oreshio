class Item < ActiveRecord::Base
  attr_accessible :name

  #しおり
  belongs_to :story
end
