class CreateLists < ActiveRecord::Migration
  def change
    create_table :lists do |t|
      t.string :title
      t.string :color
      t.string :status

      t.timestamps
    end
  end
end
