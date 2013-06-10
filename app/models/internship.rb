class Internship < ActiveRecord::Base
  attr_accessible :company_id, :date_from, :date_until, :description_job, :hs_friday, :hs_monday, :hs_saturday, :hs_sunday, :hs_thursday, :hs_tuesday, :hs_wednesday, :situation_id, :task_ids, :napplicants, :horario, :description
  belongs_to :company
  belongs_to :situation
  has_many :contracts
 

  has_and_belongs_to_many :tasks
  has_and_belongs_to_many :users
  #belongs_to :user

  def mostrar_tareas
    Internship.tasks.each do |pas|
      pas.description
    end
  end

end
