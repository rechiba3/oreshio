class CreateSchedules < ActiveRecord::Migration
  def change
    create_table :schedules, :options => "DEFAULT CHARACTER SET = UTF8" do |t|
    	t.integer   :story_id
      t.datetime  :event_day
      t.string    :event_time
      t.string    :todo
      t.text    :annotation
      t.timestamps
    end
  end
end
