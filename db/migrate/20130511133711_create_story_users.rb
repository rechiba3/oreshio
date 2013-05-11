class CreateStoryUsers < ActiveRecord::Migration
  def change
    create_table :story_users do |t|
      t.integer :story_id
      t.integer :user_id
      t.integer :post_id
    end
  end
end
