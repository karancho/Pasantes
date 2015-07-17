class UsersController < ApplicationController
  #skip_before_filter :authorize,:only =>  [:new, :create, :update, :edit, :show]
  #skip_before_filter :authorize,:only =>  [:update, :edit, :show]
  # GET /users
  # GET /users.json

  #Solo cuando en application_controller esta seteado como before_filter :authorize
  #skip_before_filter :authorize, :only => [:new, :create, :update, :edit, :show]

  #Activando autorizacion por CONTROLADOR, no GENERAL
  before_filter :authorize, :only =>  [:update, :edit, :index]

  def index
    @users = User.order(:name)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json =>  @users }
    end
  end

  # GET /users/1
  # GET /users/1.json
  def show

    @user = User.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json =>  @user }
    end
  end

  # GET /users/new
  # GET /users/new.json
  def new
    @user = User.new
    @localities = Locality.all
    @treatments = Treatment.all

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json =>  @user }
    end
  end

  # GET /users/1/edit
  def edit
    @user = User.find(params[:id])
    @localities = Locality.all
    @treatments = Treatment.all
  end

  # POST /users
  # POST /users.json
  def create
    debugger
    @user = User.new(params[:user])
    @localities = Locality.all
    @treatments = Treatment.all

    if params[:user][:validated] == "1" #alguien esta validando este usuario
      usuarioEnCurso = User.find_by_id(session[:user_id])
      @user.validated_id = usuarioEnCurso.id
    end

    if @user.graduated == false and params[:user][:graduated] == "1" #alguien esta validando este usuario
      usuarioEnCurso = User.find_by_id(session[:user_id])
      @user.graduated_id = usuarioEnCurso.id
    end

    respond_to do |format|
      if @user.save

        format.html { redirect_to @user, :notice =>  'User was successfully created.' }
        #format.html { redirect_to :action => "show", :id => @user.id }
        format.json { render :json =>  @user, :status =>  :created, :location => @user }

      else
        format.html { render :action => "new" }
        format.json { render :json =>  @user.errors, :status =>  :unprocessable_entity }
      end
    end
  end

  # PUT /users/1
  # PUT /users/1.json
  def update
    @user = User.find(params[:id])
    @localities = Locality.all
    @treatments = Treatment.all

    respond_to do |format|
      if @user.update_attributes(params[:user])
        #format.html { redirect_to @user, :notice =>  'User was successfully updated.' }
        if @user.admin
          format.html { redirect_to users_url, :notice =>  'User  #{@user.name}  #{@user.surname} was successfully updated.' }
          format.json { head :no_content }
        else
          format.html { redirect_to landing_bienvenida_url, :notice =>  'User  #{@user.name}  #{@user.surname} was successfully updated.' }
          format.json { head :no_content }
        end
      else
        format.html { render :action => "edit" }
        format.json { render :json =>  @user.errors, :status =>  :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user = User.find(params[:id])
    begin
      @user.destroy
      flash[:notice] = "User #{@user.name} deleted"
    rescue Exception => e
      flash[:notice] = e.message
    end

    respond_to do |format|
      format.html { redirect_to users_url }
      format.json { head :no_content }
    end
  end




end
