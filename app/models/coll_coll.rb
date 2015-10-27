class CollColl < ActiveRecord::Base
  belongs_to :parent, :foreign_key => 'parent_collection_id', class_name: 'Collection'
  belongs_to :child, :foreign_key => 'child_collection_id', class_name: 'Collection'
end
