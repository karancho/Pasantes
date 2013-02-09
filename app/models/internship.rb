class Internship < ActiveRecord::Base
  attr_accessible :company_id, :date_from, :date_until, :description_job, :hs_friday, :hs_monday, :hs_saturday, :hs_sunday, :hs_thursday, :hs_tuesday, :hs_wednesday, :situation_id, :task_ids, :napplicants
  belongs_to :user
  belongs_to :company
  belongs_to :situation

  has_and_belongs_to_many :tasks
  def mostrar_tareas
    Internship.tasks.each do |pas|
      pas.description
    end
  end

end
