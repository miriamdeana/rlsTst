class RemoveContactIdFromGroup < ActiveRecord::Migration
  def up
    remove_column :groups, :contact_id
  end

  def down
    add_column :groups, :contact_id, :integer
  end
end
