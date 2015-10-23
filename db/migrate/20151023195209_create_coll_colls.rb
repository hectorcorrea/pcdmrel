class CreateCollColls < ActiveRecord::Migration
  def change
    create_table :coll_colls do |t|
      t.integer :order
      t.integer :collection_id
      t.integer :has_member_id

      t.timestamps null: false
    end
  end
end
