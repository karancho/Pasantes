# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Emanuel', :city => cities.first)

#Contar con al menos un administrador
Treatment.create :treatment => 'Sr'
Locality.create :locality => 'Mendoza', :province_id => 1
User.create(:name => 'Sergio', :surname => 'Alonso', :dni => '12231231', :cuil => '20-1231312-6', :locality_id => 1, :password => 'tangamandapio', :email => 'escuelaint@gmail.com', :admin => true, :treatment_id => 1, :validated => true, :validated_id => 1)
