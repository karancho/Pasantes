class ReconectarController < ApplicationController
  def reconectar_form
    @companies = Company.order("name ASC")
    @users = User.where(manager: true).order("surname ASC")
  end

  def reconectar_response
  	@company = Company.find(params[:company_id])
  	@company.user_id = params[:user_id]
  	@company.save
  end
end
