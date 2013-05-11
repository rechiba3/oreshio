class Story < ActiveRecord::Base
  # attr_accessible :title, :body

  #ユーザ=>参加者
  has_many :user, :through => :story_user

  #ユーザ
  belongs_to :user

  #めぐリスト
  has_many :visiteds
  #持ち物
  has_many :items
end
