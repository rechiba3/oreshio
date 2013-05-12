class Visited < ActiveRecord::Base
  attr_accessible :location, :map, :comment

  #しおり
  belongs_to :story
end
