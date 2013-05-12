class Schedule < ActiveRecord::Base
  attr_accessible :annotation

  belongs_to :story
end
