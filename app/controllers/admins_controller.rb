class AdminsController < ActionController::Base

  def index
    @users = User.all
  end

  def makeartist_user
    u = User.find(params[:id])
    u.unset_artist
    redirect_to :admin_view
  end

  def unartist_user
    u = User.find(params[:id])
    u.set_artist
    redirect_to :admin_view
  end

  def admin_user
    u = User.find(params[:id])
    u.set_admin
  end

  def unadmin_user
    u = User.find(params[:id])
    u.unset_admin
  end
end

