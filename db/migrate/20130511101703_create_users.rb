class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users, :options => "DEFAULT CHARACTER SET = UTF8" do |t|

      t.string :name
      t.string :oauth
      t.string :thumbnail
      t.timestamps
    end
  end
end
