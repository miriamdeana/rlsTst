class ContactsGroups < ActiveRecord::Migration
  def self.up
  	create_table 'contacts_groups', :id => false do |t|
  		t.column :contact_id, :integer
  		t.column :group_id, :integer
  	end
  end

  def down
  end
end
