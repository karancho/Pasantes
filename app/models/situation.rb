class Situation < ActiveRecord::Base
  attr_accessible :status
  has_many :internships
end
