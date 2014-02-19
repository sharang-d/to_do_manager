class AddDefaultValueToStatusAttributeInLists < ActiveRecord::Migration
  def up
    change_column :lists, :status, :string, default: "Pending"
  end
  def down
    change_column :lists, :status, :string, default: nil
  end
end
