class FollowingsController < ApplicationController
  before_action :find_relationship, only: [:destroy]
  def create
    if already_followed?
      flash[:notice] = "You can't follow more than once"
    else
      Relationship.create(follower_id: current_user.id, followed_user_id: params[:id])
    end
    redirect_back fallback_location: '/'
  end
  def destroy
    if !(already_followed?)
      flash[:notice] = "Cannot unfollow"
    else
      Relationship.destroy(@relationship.ids)
    end
    redirect_back fallback_location: '/'
  end
  private
  def find_relationship
    @relationship = Relationship.where(follower_id: current_user.id, followed_user_id: params[:id])
  end

  def already_followed?
    Relationship.where(follower_id: current_user.id, followed_user_id: params[:id]).exists?
  end
end