class CreateStoryUsers < ActiveRecord::Migration
  def change
    create_table :story_users do |t|
      t.integer :post_id
      t.timestamps
    end
  end
end
