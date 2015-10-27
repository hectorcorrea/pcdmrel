class CollColl < ActiveRecord::Base
  belongs_to :parent, :foreign_key => 'collection_id', class_name: 'Collection'
  belongs_to :collection, :foreign_key => 'has_member_id', class_name: 'Collection'
end
