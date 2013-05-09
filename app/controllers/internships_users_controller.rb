class InternshipsUsersController < ApplicationController
  # GET /internships_users
  # GET /internships_users.json
  def index
    @internships_users = InternshipsUser.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @internships_users }
    end
  end

  # GET /internships_users/1
  # GET /internships_users/1.json
  def show
    @internships_user = InternshipsUser.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @internships_user }
    end
  end

  # GET /internships_users/new
  # GET /internships_users/new.json
  def new
    @internships_user = InternshipsUser.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @internships_user }
    end
  end

  # GET /internships_users/1/edit
  def edit
    @internships_user = InternshipsUser.find(params[:id])
  end

  # POST /internships_users
  # POST /internships_users.json
  def create
    @internships_user = InternshipsUser.new(params[:internships_user])

    respond_to do |format|
      if @internships_user.save
        format.html { redirect_to @internships_user,  :notice => 'Internships user was successfully created.' }
        format.json { render :json => @internships_user,  :status => :created, :location => @internships_user }
      else
        format.html { render  :action => "new" }
        format.json { render :json => @internships_user.errors,  :status => :unprocessable_entity }
      end
    end
  end

  # PUT /internships_users/1
  # PUT /internships_users/1.json
  def update
    @internships_user = InternshipsUser.find(params[:id])

    respond_to do |format|
      if @internships_user.update_attributes(params[:internships_user])
        format.html { redirect_to @internships_user,  :notice => 'Internships user was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render  :action => "edit" }
        format.json { render :json => @internships_user.errors,  :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /internships_users/1
  # DELETE /internships_users/1.json
  def destroy
    @internships_user = InternshipsUser.find(params[:id])
    @internships_user.destroy

    respond_to do |format|
      format.html { redirect_to internships_users_url }
      format.json { head :no_content }
    end
  end
end
