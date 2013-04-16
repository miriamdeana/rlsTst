class AddContactIdToGroup < ActiveRecord::Migration
  def change
    add_column :groups, :contact_id, :integer
  end
end
