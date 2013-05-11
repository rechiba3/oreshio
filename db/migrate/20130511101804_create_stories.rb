class CreateStories < ActiveRecord::Migration
  def change
    create_table :stories do |t|

      t.integer   :user_id
      t.string    :title
      t.string    :sub_title
      t.datetime  :event_day
      t.string    :catchphrase 
      t.integer   :sachedule_id
      t.string    :mail
      t.string    :memo
      t.string    :rule
      t.boolean   :status
      t.timestamps
    end
  end
end
