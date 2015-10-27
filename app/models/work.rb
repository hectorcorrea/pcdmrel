class Work < ActiveRecord::Base
  belongs_to :collection, class_name: 'Collection'
  has_many :works, :class_name => 'WorkWork', :foreign_key => 'parent_work_id'
  has_many :files, :class_name => 'Pcdmfile', :foreign_key => 'pcdmwork_id'
end
