class RemoveGroupIdFromContact < ActiveRecord::Migration
  def up
    remove_column :contacts, :group_id
  end

  def down
    add_column :contacts, :group_id, :integer
  end
end
