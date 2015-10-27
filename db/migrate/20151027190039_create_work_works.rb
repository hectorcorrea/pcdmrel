class CreateWorkWorks < ActiveRecord::Migration
  def change
    create_table :work_works do |t|
      t.integer :parent_work_id
      t.integer :child_work_id

      t.timestamps null: false
    end
  end
end
