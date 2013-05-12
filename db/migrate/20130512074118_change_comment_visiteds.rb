class ChangeCommentVisiteds < ActiveRecord::Migration
  def change
  	change_column :visiteds, :comment, :text
  end
end
