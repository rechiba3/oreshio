class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts, :options => "DEFAULT CHARACTER SET = UTF8" do |t|

      t.string :name
    end
  end
end
