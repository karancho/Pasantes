class Contract < ActiveRecord::Base
  attr_accessible :internship_id, :user_id
  belongs_to :internship
  belongs_to :user

end
