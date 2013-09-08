class Type < ActiveRecord::Base
  attr_accessible :tipo
  has_many :internships
end
