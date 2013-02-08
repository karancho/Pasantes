class Locality < ActiveRecord::Base
  attr_accessible :locality, :province_id
  has_one :user
  has_one :company
  belongs_to :province

end
