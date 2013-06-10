class Treatment < ActiveRecord::Base
  attr_accessible :treatment
  
  has_many :users
  has_many :internships
end
