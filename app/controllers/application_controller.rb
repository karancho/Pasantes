class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :authorize

  protected
    def authorize
      unless User.find_by_id(session[:user_id])
        redirect_to login_url, notice: "Por favor logueese"
      end
    end
    
    #def soloadmin
    #  user = User.find_by_id(session[:user_id])
    #  if user.dni == "111"
    #    puts "todo bien"
    #  else
    #    redirect_to login_url, notice: "Necesita nivel de administrador"
    #  end
      
    #end
end
