class CreateSachedules < ActiveRecord::Migration
  def change
    create_table :sachedules do |t|

      t.datetime  :event_day
      t.string    :event_time
      t.string    :todo
      t.string    :annotation
      t.timestamps
    end
  end
end
