class WorkWork < ActiveRecord::Base
  belongs_to :parent, :foreign_key => 'parent_work_id', class_name: 'Work'
  belongs_to :child, :foreign_key => 'child_work_id', class_name: 'Work'
end
