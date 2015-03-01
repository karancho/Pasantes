class SituationsController < ApplicationController
  #Solo cuando en application_controller esta seteado como before_filter :authorize
  #skip_before_filter :authorize, :only => [:new, :create, :update, :edit, :show]

  #Activando autorizacion por CONTROLADOR, no GENERAL
  before_filter :authorize
  
  # GET /situations
  # GET /situations.json
  def index
    @situations = Situation.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @situations }
    end
  end

  # GET /situations/1
  # GET /situations/1.json
  def show
    @situation = Situation.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @situation }
    end
  end

  # GET /situations/new
  # GET /situations/new.json
  def new
    @situation = Situation.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @situation }
    end
  end

  # GET /situations/1/edit
  def edit
    @situation = Situation.find(params[:id])
  end

  # POST /situations
  # POST /situations.json
  def create
    @situation = Situation.new(params[:situation])

    respond_to do |format|
      if @situation.save
        format.html { redirect_to @situation,  :notice => 'Situation was successfully created.' }
        format.json { render :json => @situation,  :status => :created, :location => @situation }
      else
        format.html { render  :action => "new" }
        format.json { render :json => @situation.errors,  :status => :unprocessable_entity }
      end
    end
  end

  # PUT /situations/1
  # PUT /situations/1.json
  def update
    @situation = Situation.find(params[:id])

    respond_to do |format|
      if @situation.update_attributes(params[:situation])
        format.html { redirect_to @situation,  :notice => 'Situation was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render  :action => "edit" }
        format.json { render :json => @situation.errors,  :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /situations/1
  # DELETE /situations/1.json
  def destroy
    @situation = Situation.find(params[:id])
    @situation.destroy

    respond_to do |format|
      format.html { redirect_to situations_url }
      format.json { head :no_content }
    end
  end
end
