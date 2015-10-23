class CollColl < ActiveRecord::Base
  belongs_to :collection, class_name: 'Collection'
  belongs_to :has_member, class_name: 'Collection'
end
