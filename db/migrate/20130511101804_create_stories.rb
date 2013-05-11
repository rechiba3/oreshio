class CreateStories < ActiveRecord::Migration
  def change
    create_table :stories do |t|
      t.integer   :user_id
      t.string    :title
      t.string    :sub_title
      t.datetime  :event_day
      t.string    :catchphrase 
      t.integer   :schedule_id
      t.string    :mail
      t.text      :memo
      t.text    :rule
      t.boolean   :status
      t.timestamps
    end
  end
end
