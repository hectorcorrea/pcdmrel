class Collection < ActiveRecord::Base
  # has_many :collection, :class_name => 'CollColl', :foreign_key => 'collection_id'
  # has_many :has_member, :class_name => 'CollColl', :foreign_key => 'has_member_id'
  # has_many :work, :class_name => 'Work', :foreign_key => 'collection_id'
  has_many :has_member, :class_name => 'CollColl', :foreign_key => 'collection_id'
  has_many :work, :class_name => 'Work', :foreign_key => 'collection_id'
end
