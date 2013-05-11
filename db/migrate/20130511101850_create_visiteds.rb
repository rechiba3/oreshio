class CreateVisiteds < ActiveRecord::Migration
  def change
    create_table :visiteds do |t|

      t.integer :story_id
      t.string  :location
      t.string  :map
      t.string  :comment
      t.timestamps
    end
  end
end
