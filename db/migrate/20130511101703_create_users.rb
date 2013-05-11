class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|

      t.String :name
      t.String :oauth
      t.String :thumbnail
      t.timestamps
    end
  end
end
