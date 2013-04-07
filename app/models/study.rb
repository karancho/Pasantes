class Study < ActiveRecord::Base
  attr_accessible :academy, :description, :from, :title, :until, :user_id
  belongs_to :user
  
end
