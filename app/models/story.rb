class Story < ActiveRecord::Base
  attr_accessible :title, :sub_title, :event_day, :memo, :rule

  # ========= association =========

  #ユーザ
  belongs_to :user

  #ユーザ=>参加者
  has_many :users, :through => :story_users

  #めぐリスト
  has_many :visiteds

  #持ち物
  has_many :items

  #スケジュール
  has_many :schedules

  # ========= validation =========

  validates :title, presence: true
  validates :rule, presence: true
  validates :event_day, presence: true


end
