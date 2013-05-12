class Story < ActiveRecord::Base
  attr_accessible :title, :sub_title, :event_day, :memo, :rule, :items_attributes, :visiteds_attributes

  # ========= association =========

  #ユーザ
  belongs_to :user

  #ユーザ=>参加者
  has_many :users, :through => :story_users, :dependent => :destroy

  #めぐリスト
  has_many :visiteds, :dependent => :destroy
  accepts_nested_attributes_for :visiteds, reject_if: lambda { |i| i[:location].blank? }, allow_destroy: true

  #持ち物
  has_many :items, :dependent => :destroy
  accepts_nested_attributes_for :items, reject_if: lambda { |i| i[:name].blank? }, allow_destroy: true

  #スケジュール
  has_many :schedules, :dependent => :destroy

  # ========= validation =========

  validates :title, presence: true
  validates :rule, presence: true
  validates :event_day, presence: true


end
