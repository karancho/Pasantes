class CompaniesController < ApplicationController
  skip_before_filter :authorize, :only => [:new, :create, :update, :edit, :show]
  # GET /companies
  # GET /companies.json
  def index
    
    usuarioLogueado = User.find(session[:user_id])
    if usuarioLogueado.admin == true
      @companies = Company.all
    end
    
    if usuarioLogueado.manager == true #si es un manager el que esta logueado, que solo vea sus propias empresas
      @companies = Company.where(:user_id => usuarioLogueado.id)
    end
    

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json =>  @companies }
    end
  end

  # GET /companies/1
  # GET /companies/1.json
  def show
    @company = Company.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json =>  @company }
    end
  end

  # GET /companies/new
  # GET /companies/new.json
  def new
    @company = Company.new
    @treatments = Treatment.all
    
    @usuarioLogueado = User.find_by_id(session[:user_id])
    @nombreCompuesto = @usuarioLogueado.surname + ", " + @usuarioLogueado.name
    @cuilLogueado = @usuarioLogueado.cuil 
    #@nombreCompuesto = "cacho"
    
    @localities = Locality.all

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json =>  @company }
    end
  end

  # GET /companies/1/edit
  def edit
    @company = Company.find(params[:id])
    @localities = Locality.all
    @treatments = Treatment.all
  end

  # POST /companies
  # POST /companies.json
  def create
    @company = Company.new(params[:company])
    @treatments = Treatment.all
    
    usuarioLogueado = User.find(session[:user_id])
    unless usuarioLogueado.admin == true #si es un admin el que esta creando empresas, no tiene sentido que figure como manager
      @company.user_id = usuarioLogueado.id      
    end
    
    @localities = Locality.all

    respond_to do |format|
      if @company.save
        format.html { redirect_to @company, :notice =>  'Company was successfully created.' }
        format.json { render :json =>  @company, :status =>  :created, :location =>  @company }
      else
        format.html { render :action =>  "new" }
        format.json { render :json =>  @company.errors, :status =>  :unprocessable_entity }
      end
    end
  end

  # PUT /companies/1
  # PUT /companies/1.json
  def update
    @company = Company.find(params[:id])
    @localities = Locality.all
    @treatments = Treatment.all

    respond_to do |format|
      if @company.update_attributes(params[:company])
        format.html { redirect_to @company, :notice =>  'Company was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action =>  "edit" }
        format.json { render :json =>  @company.errors, :status =>  :unprocessable_entity }
      end
    end
  end

  # DELETE /companies/1
  # DELETE /companies/1.json
  def destroy
    @company = Company.find(params[:id])
    @company.destroy

    respond_to do |format|
      format.html { redirect_to companies_url }
      format.json { head :no_content }
    end
  end
end
