class AdminsController < ApplicationController
  before_action :is_admin, only: [:index, :admin_dashboard]

  def all_users
    @users = User.left_outer_joins(:posts).select("users.id, username, email, count(posts.user_id) as total_posts").group("users.id,username,email,posts.user_id").order("users.created_at DESC")
  end

  def dashboard

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

  def is_signin
    if(user_signed_in?)

    else
      redirect_to :controller => 'posts', :action => 'index'
    end
  end

end