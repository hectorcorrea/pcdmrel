class CreateWorks < ActiveRecord::Migration
  def change
    create_table :works do |t|
      t.string :title
      t.integer :collection_id
      t.timestamps null: false
    end
  end
end
