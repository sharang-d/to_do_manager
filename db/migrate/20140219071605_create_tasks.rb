class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :content
      t.string :status
      t.integer :list_id

      t.timestamps
    end
  end
end
