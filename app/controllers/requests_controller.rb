class RequestsController < ApplicationController
  require 'wikipedia'

  before_action :set_request, only: %i[ show edit update destroy ]
  before_action :require_permission, only: :edit

  def require_permission
    if current_user != Request.find(params[:id]).user
      flash.alert = "You are not allowed to edit the Request"
     
    end
  end
 
  # GET /requests or /requests.json
  def index
    if params[:genre]
      @requests = Request.where(:genre => params[:genre])
    else
      @requests = Request.all
    end
  end

  # GET /requests/1 or /requests/1.json
  def show

  end

  # GET /requests/new
  def new
    @request = Request.new
    @request = current_user.requests.build
  end

  # GET /requests/1/edit
  def edit
    @request = Request.find(params[:id])
  end

  # POST /requests or /requests.json
  def create
    @request = Request.new(request_params)
    @request = current_user.requests.build(request_params)
    respond_to do |format|
      if @request.save
        format.html { redirect_to @request, notice: "Request was successfully created." }
        format.json { render :show, status: :created, location: @request }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @request.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /requests/1 or /requests/1.json
  def update
    respond_to do |format|
      if @request.update(request_params)
        format.html { redirect_to @request, notice: "Request was successfully updated." }
        format.json { render :show, status: :ok, location: @request }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @request.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /requests/1 or /requests/1.json
  def destroy
    authorize! :destroy, Request, :message => "Non sei autorizzato"

    @request.destroy
    respond_to do |format|
      format.html { redirect_to requests_url, notice: "Request was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def requests_params
      params.require(:request).permit(:your_requests_params, :user_id)
    end
  
    def set_request
      if[:id] != "about"
        @request = Request.find(params[:id])
      end
    end

    # Only allow a list of trusted parameters through.
    def request_params
      params.require(:request).permit(:title, :genre, :tag1, :tag2, :reference, :description)
    end
end
