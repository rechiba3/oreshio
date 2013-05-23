class CreateItems < ActiveRecord::Migration
  def change
    create_table :items, :options => "DEFAULT CHARACTER SET = UTF8" do |t|

      t.integer :story_id
      t.string  :name
    end
  end
end
