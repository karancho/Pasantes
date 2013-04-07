class User < ActiveRecord::Base
  attr_accessible :dni, :locality_id, :name, :password_digest, :surname, :email, :password, :password_confirmation, :admin, :address, :cuil, :manager

  #has_many :internships
  #has_many :companies, :through => :internships
  
  
  belongs_to :locality
  #has_many :contracts
  has_and_belongs_to_many :internships
  
  has_many :jobs

  validates :name, :presence => true
  validates :email, :presence => true, :uniqueness => true

  validates_presence_of :dni, :cuil

  has_secure_password

  after_destroy :ensure_an_admin_remains

  private
  def ensure_an_admin_remains
    if User.count.zero?
      raise "Can't delete last user"
    end
  end

end
