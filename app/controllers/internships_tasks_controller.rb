class InternshipsTasksController < ApplicationController
  # GET /internships_tasks
  # GET /internships_tasks.json
  def index
    @internships_tasks = InternshipsTask.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @internships_tasks }
    end
  end

  # GET /internships_tasks/1
  # GET /internships_tasks/1.json
  def show
    @internships_task = InternshipsTask.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @internships_task }
    end
  end

  # GET /internships_tasks/new
  # GET /internships_tasks/new.json
  def new
    @internships_task = InternshipsTask.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @internships_task }
    end
  end

  # GET /internships_tasks/1/edit
  def edit
    @internships_task = InternshipsTask.find(params[:id])
  end

  # POST /internships_tasks
  # POST /internships_tasks.json
  def create
    @internships_task = InternshipsTask.new(params[:internships_task])

    respond_to do |format|
      if @internships_task.save
        format.html { redirect_to @internships_task, notice: 'Internships task was successfully created.' }
        format.json { render json: @internships_task, status: :created, location: @internships_task }
      else
        format.html { render action: "new" }
        format.json { render json: @internships_task.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /internships_tasks/1
  # PUT /internships_tasks/1.json
  def update
    @internships_task = InternshipsTask.find(params[:id])

    respond_to do |format|
      if @internships_task.update_attributes(params[:internships_task])
        format.html { redirect_to @internships_task, notice: 'Internships task was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @internships_task.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /internships_tasks/1
  # DELETE /internships_tasks/1.json
  def destroy
    @internships_task = InternshipsTask.find(params[:id])
    @internships_task.destroy

    respond_to do |format|
      format.html { redirect_to internships_tasks_url }
      format.json { head :no_content }
    end
  end
end
