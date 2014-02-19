class AddDefaultValueToStatusAttributeInTasks < ActiveRecord::Migration
  def up
    change_column :tasks, :status, :string, default: "Pending"
  end
  def down
    change_column :tasks, :status, :string, default: nil
  end
end
