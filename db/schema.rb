# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20150301221325) do

  create_table "companies", :force => true do |t|
    t.string   "name"
    t.string   "address"
    t.integer  "locality_id"
    t.string   "manager"
    t.string   "boss"
    t.datetime "created_at",                                   :null => false
    t.datetime "updated_at",                                   :null => false
    t.string   "boss_dni"
    t.string   "manager_cuil"
    t.string   "position"
    t.integer  "user_id"
    t.string   "razon"
    t.string   "art",                 :default => "COMPLETAR"
    t.string   "obsocial",            :default => "COMPLETAR"
    t.integer  "bosstreatment_id"
    t.integer  "managertreatment_id"
  end

  create_table "contracts", :force => true do |t|
    t.integer "user_id"
    t.integer "internship_id"
  end

  create_table "internships", :force => true do |t|
    t.integer  "company_id"
    t.string   "description_job"
    t.integer  "situation_id"
    t.date     "date_from"
    t.date     "date_until"
    t.integer  "hs_monday"
    t.integer  "hs_tuesday"
    t.integer  "hs_wednesday"
    t.integer  "hs_thursday"
    t.integer  "hs_friday"
    t.integer  "hs_saturday"
    t.integer  "hs_sunday"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.integer  "napplicants"
    t.boolean  "horario"
    t.text     "description"
    t.integer  "type_id"
  end

  create_table "internships_tasks", :force => true do |t|
    t.integer "internship_id"
    t.integer "task_id"
  end

  create_table "internships_users", :id => false, :force => true do |t|
    t.integer "internship_id"
    t.integer "user_id"
  end

  create_table "jobs", :force => true do |t|
    t.string   "enterprise_name"
    t.string   "position"
    t.string   "area"
    t.date     "from"
    t.date     "until"
    t.boolean  "workingnow"
    t.string   "taskdescription"
    t.integer  "user_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "localities", :force => true do |t|
    t.string   "locality"
    t.integer  "province_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "provinces", :force => true do |t|
    t.string   "province"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "situations", :force => true do |t|
    t.string   "status"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "skills", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "studies", :force => true do |t|
    t.string   "academy"
    t.date     "from"
    t.date     "until"
    t.string   "title"
    t.string   "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.integer  "user_id"
  end

  create_table "tasks", :force => true do |t|
    t.string   "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "treatments", :force => true do |t|
    t.string   "treatment"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "types", :force => true do |t|
    t.string   "tipo"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "surname"
    t.string   "dni"
    t.integer  "locality_id"
    t.string   "password_digest"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.string   "email"
    t.boolean  "admin"
    t.string   "cuil"
    t.string   "address"
    t.boolean  "manager"
    t.string   "linkedin"
    t.string   "celphone"
    t.string   "homephone"
    t.integer  "treatment_id"
    t.integer  "anioegreso"
    t.string   "career"
    t.boolean  "working"
    t.string   "workwhere"
    t.boolean  "searchingjob"
    t.string   "skills"
    t.string   "skillstoimprove"
    t.string   "skype"
    t.boolean  "careercomplete"
    t.string   "position"
    t.boolean  "validated"
    t.integer  "validated_id"
    t.integer  "graduated_id"
    t.boolean  "graduated"
  end

end
