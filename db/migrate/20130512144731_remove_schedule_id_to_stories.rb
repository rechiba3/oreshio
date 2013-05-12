class RemoveScheduleIdToStories < ActiveRecord::Migration
  def change
  	remove_column :stories, :schedule_id
  end
end
