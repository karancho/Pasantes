class InternshipsController < ApplicationController
  # GET /internships
  # GET /internships.json
  def index
=begin
      @mes = params[:mes]
      mesNumerico = "0" + Time.now.month.to_s

    case @mes
      when "Enero"
        mesNumerico = "01"
      when "Febrero"
        mesNumerico = "02"
      when "Marzo"
        mesNumerico = "03"
      when "Abril"
        mesNumerico = "04"
      when "Mayo"
        mesNumerico = "05"
      when "Junio"
        mesNumerico = "06"
      when "Julio"
        mesNumerico = "07"
      when "Agosto"
        mesNumerico = "08"
      when "Setiembre"
        mesNumerico = "09"
      when "Octubre"
        mesNumerico = "10"
      when "Noviembre"
        mesNumerico = "11"
      when "Diciembre"
        mesNumerico = "12"
    end

=end
    #@internships = Internship.where("date_from LIKE :prefix", :prefix => "#{Time.now.year}-#{mesNumerico}-%")
    #@internships = Internship.order("date_from").reverse
    @internships = Internship.order("id").reverse

=begin

  @variable = ""
  @variable = @variable + "<option"

  if Time.now.month == 1
      @variable = @variable + " selected>"
  else
      @variable = @variable + ">"
  end
  @variable = @variable + "Enero</option>"

  @variable = @variable + "<option"

  if Time.now.month == 2
      @variable = @variable + " selected>"
  else
      @variable = @variable + ">"
  end
  @variable = @variable + "Febrero</option>"

  @variable = @variable + "<option"

  if Time.now.month == 3
      @variable = @variable + " selected>"
  else
      @variable = @variable + ">"
  end
  @variable = @variable + "Marzo</option>"

  @variable = @variable + "<option"

  if Time.now.month == 4
      @variable = @variable + " selected>"
  else
      @variable = @variable + ">"
  end
  @variable = @variable + "Abril</option>"

  @variable = @variable + "<option"

  if Time.now.month == 5
      @variable = @variable + " selected>"
  else
      @variable = @variable + ">"
  end
  @variable = @variable + "Mayo</option>"

  @variable = @variable + "<option"

  if Time.now.month == 6
      @variable = @variable + " selected>"
  else
      @variable = @variable + ">"
  end
  @variable = @variable + "Junio</option>"

  @variable = @variable + "<option"

  if Time.now.month == 7
      @variable = @variable + " selected>"
  else
      @variable = @variable + ">"
  end
  @variable = @variable + "Julio</option>"

  @variable = @variable + "<option"

  if Time.now.month == 8
      @variable = @variable + " selected>"
  else
      @variable = @variable + ">"
  end
  @variable = @variable + "Agosto</option>"

  @variable = @variable + "<option"

  if Time.now.month == 9
     @variable = @variable + " selected>"
  else
     @variable = @variable + ">"
  end
  @variable = @variable + "Setiembre</option>"

  @variable = @variable + "<option"

  if Time.now.month == 10
      @variable = @variable + " selected>"
  else
      @variable = @variable + ">"
  end
  @variable = @variable + "Octubre</option>"

  @variable = @variable + "<option"

  if Time.now.month == 11
      @variable = @variable + " selected>"
  else
      @variable = @variable + ">"
  end
  @variable = @variable + "Noviembre</option>"

  @variable = @variable + "<option"

  if Time.now.month == 12
      @variable = @variable + " selected>"
  else
      @variable = @variable + ">"
  end
  @variable = @variable + "Diciembre</option>"
=end

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @internships }
    end
  end

  # GET /internships/1
  # GET /internships/1.json
  def show
    @internship = Internship.find(params[:id])
    @tasks = @internship.tasks.find_all

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json =>  @internship }
    end
  end

  # GET /internships/new
  # GET /internships/new.json
  def new
    @internship = Internship.new
    @companies = Company.all
    @situations = Situation.all
    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json =>  @internship }
    end
  end

  # GET /internships/1/edit
  def edit
    @internship = Internship.find(params[:id])
    @companies = Company.all
    @situations = Situation.all
  end

  # POST /internships
  # POST /internships.json
  def create
    @internship = Internship.new(params[:internship])
    @companies = Company.all
    @situations = Situation.all

    respond_to do |format|
      if @internship.save
        format.html { redirect_to @internship, :notice => 'Internship was successfully created.' }
        format.json { render :json =>  @internship, :status =>  :created, :location => @internship }
      else
        format.html { render :action => "new" }
        format.json { render :json =>  @internship.errors, :status =>  :unprocessable_entity }
      end
    end
  end

  # PUT /internships/1
  # PUT /internships/1.json
  def update
    params[:internship][:task_ids] ||= []
    @internship = Internship.find(params[:id])
    @companies = Company.all
    @situations = Situation.all

    respond_to do |format|
      if @internship.update_attributes(params[:internship])
        format.html { redirect_to @internship, :notice =>  'Internship was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json =>  @internship.errors, :status =>  :unprocessable_entity }
      end
    end
  end

  # DELETE /internships/1
  # DELETE /internships/1.json
  def destroy
    @internship = Internship.find(params[:id])
    @internship.destroy

    respond_to do |format|
      format.html { redirect_to internships_url }
      format.json { head :no_content }
    end
  end
end
