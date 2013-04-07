class Job < ActiveRecord::Base
  attr_accessible :area, :enterprise_name, :from, :position, :taskdescription, :until, :user_id, :workingnow
  belongs_to :user
end
