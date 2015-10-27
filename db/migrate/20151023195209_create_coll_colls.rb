class CreateCollColls < ActiveRecord::Migration
  def change
    create_table :coll_colls do |t|
      t.integer :order
      t.integer :parent_collection_id
      t.integer :child_collection_id

      t.timestamps null: false
    end
  end
end
