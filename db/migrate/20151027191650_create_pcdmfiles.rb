class CreatePcdmfiles < ActiveRecord::Migration
  def change
    create_table :pcdmfiles do |t|
      t.string :name
      t.string :content_type
      t.integer :size
      t.string :url
      t.integer :pcdmwork_id

      t.timestamps null: false
    end
  end
end
