class Collection < ActiveRecord::Base
  has_many :collections, :class_name => 'CollColl', :foreign_key => 'parent_collection_id'
  has_many :works, :class_name => 'Work', :foreign_key => 'collection_id'
end
