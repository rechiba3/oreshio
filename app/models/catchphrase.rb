class Catchphrase < ActiveRecord::Base
  # attr_accessible :title, :body

  #しおり
  has_many :stories
end
