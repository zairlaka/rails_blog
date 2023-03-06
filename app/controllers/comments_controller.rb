class CommentsController < ApplicationController
 
    def create
        @post = Post.find(params[:post_id])
        @comment = @post.comments.create(params[:comment].permit(:name , :message))
        if @comment
            ActionCable.server.broadcast(
            "comments",
                {
                    comment: @comment
                }
            )
        end
        # binding.pry
        respond_to do |format|
            format.html @post
            format.js
        end
    end
    
    def destroy
        @post = Post.find(params[:post_id])
        @comment = @post.comments.find(params[:id])
        @comment.destroy
        redirect_to post_path(@post)
    end

end
