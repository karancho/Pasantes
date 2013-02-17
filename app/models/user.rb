class User < ActiveRecord::Base
  attr_accessible :dni, :locality_id, :name, :password_digest, :surname, :email, :password, :password_confirmation, :admin

  has_many :internships
  has_many :companies, :through => :internships
  belongs_to :locality
  has_many :contracts


  validates :name, :presence => true
  validates :email, :presence => true, :uniqueness => true
  has_secure_password

  after_destroy :ensure_an_admin_remains

  private
  def ensure_an_admin_remains
    if User.count.zero?
      raise "Can't delete last user"
    end
  end

end
