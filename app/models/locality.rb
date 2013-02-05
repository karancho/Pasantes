class Locality < ActiveRecord::Base
  attr_accessible :locality, :province_id
  has_one :people
  has_one :company
  belongs_to :province

end
