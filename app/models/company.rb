class Company < ActiveRecord::Base
  attr_accessible :address, :boss, :locality_id, :manager, :name
  has_many :internships
  has_many :users, :through => :internships
  belongs_to :locality
end
