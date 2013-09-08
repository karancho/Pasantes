class InternshipsController < ApplicationController
  skip_before_filter :authorize,:only =>  [:new, :create, :update, :edit, :show]
  # GET /internships
  # GET /internships.json
  def index
    #@internships = Internship.where("date_from LIKE :prefix", :prefix => "#{Time.now.year}-#{mesNumerico}-%")
    #@internships = Internship.order("date_from").reverse
    @internships = Internship.order("id").reverse

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
    @users = @internship.users

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json =>  @internship }
    end
  end

  # GET /internships/new
  # GET /internships/new.json
  def new

    @types = Type.all
    usuarioLogueado = User.find(session[:user_id])
    if usuarioLogueado.manager
      @companies = Company.where(:user_id => usuarioLogueado.id)
    else
      @companies = Company.all
    end
    
    @internship = Internship.new
    @situations = Situation.all
    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json =>  @internship }
    end
  end

  # GET /internships/1/edit
  def edit
    usuarioLogueado = User.find(session[:user_id])
    if usuarioLogueado.manager
      @companies = Company.where(:user_id => usuarioLogueado.id)
    else
      @companies = Company.all
    end
 
    @internship = Internship.find(params[:id])
    @situations = Situation.all
    @types = Type.all
  end

  # POST /internships
  # POST /internships.json
  def create
    usuarioLogueado = User.find(session[:user_id])
    if usuarioLogueado.manager
      @companies = Company.where(:user_id => usuarioLogueado.id)
    else
      @companies = Company.all
    end
    
    @internship = Internship.new(params[:internship])
    @situations = Situation.all
    @types = Type.all

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
    usuarioLogueado = User.find(session[:user_id])
    if usuarioLogueado.manager
      @companies = Company.where(:user_id => usuarioLogueado.id)
    else
      @companies = Company.all
    end
 
    params[:internship][:task_ids] ||= []
    @internship = Internship.find(params[:id])
    @situations = Situation.all
    @types = Type.all

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

  def postularme
    #params[:internship][:user_ids] ||= []
    @internship = Internship.find(params[:id])
    s = User.find(session[:user_id])
    @internship.users << s
  
  end
end
