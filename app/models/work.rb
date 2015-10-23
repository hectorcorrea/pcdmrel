class Work < ActiveRecord::Base
  belongs_to :collection, class_name: 'Collection'
end
