class RemoveGroupIdFromGroup < ActiveRecord::Migration
  def up
    remove_column :groups, :group_id
  end

  def down
    add_column :groups, :group_id, :integer
  end
end
