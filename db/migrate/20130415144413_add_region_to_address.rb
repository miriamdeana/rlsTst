class AddRegionToAddress < ActiveRecord::Migration
  def change
    add_column :addresses, :region, :string
  end
end
