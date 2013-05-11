class Story < ActiveRecord::Base
  # attr_accessible :title, :body

  #ユーザ=>参加者
  has_many :users, :through => :story_users

  #ユーザ
  belongs_to :user

  #めぐリスト
  has_many :visiteds
  #持ち物
  has_many :items
  #スケジュール
  has_many :schedules
end
