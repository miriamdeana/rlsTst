class AddCountToContact < ActiveRecord::Migration
  def change
    add_column :contacts, :address_count, :integer
  end
end
