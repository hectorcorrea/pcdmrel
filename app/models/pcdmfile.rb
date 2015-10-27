class Pcdmfile < ActiveRecord::Base
  belongs_to :work, :foreign_key => 'pcdmwork_id', class_name: 'Work'
end
