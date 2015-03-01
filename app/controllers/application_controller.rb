class ApplicationController < ActionController::Base
  protect_from_forgery

  #Autorizacion EN EL (OJO nuevos scaffolds)
  #Se descomenta aqui para darles autoridad a cada controlador sobre lo que pueden o no dejar pasar
  #Como es el caso de users, que se permite el alta de egresados sin estar logueado
  
  #before_filter :authorize
  #before_filter :authorize, :except => [:new]

  protected
    def authorize
      unless User.find_by_id(session[:user_id])
        redirect_to login_url, :notice => "Por favor logueese"
      end
    end   

end
