class AddCountToContact < ActiveRecord::Migration
  def change
    add_column :contacts, :addresses_count, :integer
  end
end
