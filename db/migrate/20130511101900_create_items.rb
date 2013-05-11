class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|

      t.integer :story_id
      t.string  :item
      t.timestamps
    end
  end
end
