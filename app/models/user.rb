class User < ActiveRecord::Base
  attr_accessible :dni, :locality_id, :name, :password_digest, :surname, :email, :password, :password_confirmation, :admin, :address, :cuil, :manager, :linkedin, :celphone, :homephone, :treatment_id, :career, :skype, :working, :searchingjob, :careercomplete, :anioegreso, :skills, :skillstoimprove, :workwhere, :position

  #has_many :internships
  has_many :companies, :through => :internships
  
  #Esto es para que la compañia pueda encontrar a su dueno, o para que el dueño pueda cargar su compania sin tener quepasar por internships primero como en la relac anterior arriba 
  #has_many :companies #ojo aca, testear bien si no hay problema con doble relacion  has_many :companies
  
  
  belongs_to :locality
  has_many :contracts
  has_and_belongs_to_many :internships
  
  has_many :jobs
  has_many :studies

  belongs_to :treatment
  validates :name, :presence => true
  validates :email, :presence => true, :uniqueness => true

  validates_presence_of :dni

  has_secure_password

  after_destroy :ensure_an_admin_remains

  #Util para select_tag de form_atg en reconectar_form
  def nombre_completo
    return surname + ", " + name
  end

  private
  def ensure_an_admin_remains
    if User.count.zero?
      raise "Can't delete last user"
    end
  end

end
