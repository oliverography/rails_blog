class ChangeNameToUserIdInCommentsTable < ActiveRecord::Migration
  def change
    remove_column :comments, :name
    add_column :comments, :user_id, :integer
  end
end
