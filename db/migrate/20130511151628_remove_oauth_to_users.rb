class RemoveOauthToUsers < ActiveRecord::Migration
  def change
  	remove_column :users, :oauth
  	remove_column :users, :thumbnail
  end
end
