class ContactsGroups < ActiveRecord::Migration
  def change
   	create_table 'contacts_groups', :id => false do |t|
   	 t.column :contact_id, :integer 
   	 t.column :group_id, :integer
   	end
  end
end
