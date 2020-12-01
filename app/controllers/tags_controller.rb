class TagsController < ApplicationController
before_action :is_admin
  def index
    @tags = Tag.all
  end

  def new
    @tag = Tag.new
  end

  def create
    @tag = Tag.new(tag_params)
    if @tag.save
      redirect_to tags_path
    end
  end

  def edit
    @tag = Tag.find(params[:id])
  end

  def update
    @tag = Tag.find(params[:id])
    if @tag.update_attributes(tag_params)
      flash[:notice] = "Tag is Updated Successfully"
      redirect_to tags_path
    else
      render 'edit'
    end

  end

  def destroy
    @tag = Tag.find(params[:id])
    if @tag.destroy
      flash[:notice] = "Tag is Deleted Successfully"
      redirect_to tags_path
    else
      render('index')
    end
  end

  private

  def tag_params
    params.require(:tag).permit(:name)
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