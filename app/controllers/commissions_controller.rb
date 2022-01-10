class CommissionsController < ApplicationController
 
  before_action :require_permission, only: :edit

  def require_permission
    if current_user != Request.find(params[:reuqest_id]).commissions.find(params[:id]).user
      flash.alert = "Non sei autorizzato a modificare la commissione"
    end
  end 

  def new

  end

  def edit
    @commission = Request.find(params[:request_id]).commissions.find(params[:id])
  end

  def update
    @commission = Commission.find(params[:request_id]).commissions.find(params[:id])

    if @commission.update(commission_params)
      redirect_to @commission.request
    else
      render :edit
    end
  end

  def create
    @request = Request.find(params[:request_id])
    @commission = @request.commissions.create(commission_params)
    redirect_to request_path(@request)
  end

  def destroy
    @request = Request.find(params[:request_id])
    @commission = @request.commissions.find(params[:id])
    @commission.destroy
    redirect_to requests_path(@request)
  end

  private
    def commission_params
      p = params.require(:commission).permit(:details, :prize, :artist)
      {:details=> p[:details], :prize=>p[:prize], :artist=>Artist.find(p[:artist])}
    end
end
