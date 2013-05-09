class Company < ActiveRecord::Base
  attr_accessible :address, :boss, :locality_id, :manager, :name, :position, :boss_dni, :manager_cuil, :user_id, :razon

  has_many :internships
  
  has_many :users, :through => :internships
  belongs_to :user #ojo aca, testear bien si no hay problema con doble relacion  has_many :users
  
  belongs_to :locality
end
