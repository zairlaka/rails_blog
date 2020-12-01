class AdminController < ApplicationController
  before_action :is_admin

  def index
    @users = User.all.order("created_at DESC")
  end
  def show
    @user = User.find(params[:id])
  end

  def admin_dashboard

  end


  def is_admin
    if(user_signed_in?)
      unless current_user.isadmin
        redirect_to :controller => 'posts', :action => 'index'
      end
    else
      redirect_to root_path
    end
  end

end