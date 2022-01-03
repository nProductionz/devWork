# frozen_string_literal: true

class Users::SessionsController < Devise::SessionsController

  skip_before_action :check_user_logged_in
  # before_action :configure_sign_in_params, only: [:create]

  # GET /resource/sign_in
  # def new
  #   super
  # end

  # POST /resource/sign_in
  def create
  #   super
    name = params[:user][:name]
    password = params[:user][:password]
    if @current_user.length==0 or
      @current_user[0][:password]!=password
    then
      flash[:loginerror]=true
      redirect_to login_path
    else
      session[:user]=@current_user[0][:name]
      session[:user_id]=@current_user[0][:id]
      redirect_to requests_path 
   end
  end

  # DELETE /resource/sign_out
  # def destroy
  #   super
  # end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  # end
end
