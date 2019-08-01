class FollowingsController < ApplicationController
  before_action :find_user
  before_action :find_post
  before_action :find_relstionship, only: [:destroy]
  def create
    if already_followed?
      flash[:notice] = "You can't follow more than once"
    else
      @user.follower.create(user_id: current_user.id)
    end
    redirect_to post_path(@post)
  end
  def destroy
    if !(already_followed?)
      flash[:notice] = "Cannot unfollow"
    else
      @like.destroy
    end
    redirect_to post_path(@post)
  end
  def find_like
    @like = @post.likes.find(params[:id])
  end
  private
  def find_relationship
    @user = User.find(params[:user_id])
  end
  def find_post
    @post = Post.find(params[:post_id])
  end
  def already_followed?
    Relationship.where(follower_id: current_user.id, user_id:
        params[:user_id]).exists?
  end
end