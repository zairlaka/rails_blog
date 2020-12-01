class PostsController < ApplicationController
    before_action :find_post, only: [:show,:edit,:update,:destroy]
    before_action :authenticate_user!, only: [:new,:edit,:destroy]
    before_action :is_owner, only: [:edit,:destroy]

    def index
        #params[:tag] ? @posts = Post.tagged_with(params[:tag]) : @posts = Post.all.order("created_at DESC")
        params[:tag] ? @posts = Post.tagged_with(params[:tag]).paginate(:page => params[:page], :per_page => 5) : @posts = Post.paginate(:page => params[:page], :per_page => 5)
    end
    
    def show
        @post = Post.find(params[:id])
    end
    def new
        @post = Post.new
        @categories = Category.all.map { |cat| [cat.name, cat.id] }
    end

    def create
        @post = current_user.posts.build(post_params)#mass assignment
        @post.category_id = params[:category_id]
        if @post.save
            redirect_to @post , notice: 'Post was successfully Created.'
        else
            # return or render the view
            @categories = Category.all.map { |cat| [cat.name, cat.id] }
            render "new"
            # Notice that inside the create action we use render instead of redirect_to when save returns false.
            # The render method is used so that the @article object is passed back to the new template when it is rendered.
            # This rendering is done within the same request as the form submission,
            # whereas the redirect_to will tell the browser to issue another request.
        end
    end

    def edit
        @post = Post.find(params[:id])
        @categories = Category.all.map { |cat| [cat.name, cat.id] }
    end
    
    def update
       
        @post = Post.find(params[:id])
        @post.category_id = params[:category_id]
        if @post.update(post_params)
            # It is not necessary to pass all the attributes to update. For example, if @article.update(title: 'A new title') was called, 
            # Rails would only update the title attribute, leext install hridoy.rails-snippetsaving all other attributes untouched.
            redirect_to @post , notice: 'Post was successfully Updated.'
        else
            @categories = Category.all.map { |cat| [cat.name, cat.id] }
            render "edit"
        end
    end

    def destroy
        @post = Post.find(params[:id])
        @post.destroy

        redirect_to posts_path , notice: 'Post was successfully Deleted.'
    end

private
    def post_params
        params.require(:post).permit(:title, :body, :user_id, :category_id, :image,
                                     :tag_list, :tag, { tag_ids: [] }, :tag_ids )

        #white listing called strong parameter
    end
    def find_post
        @post = Post.find(params[:id])
    end
    def is_owner
        unless(current_user == @post.user || current_user.isadmin)
            redirect_to @post
        end
    end
end
#for automatic export 
#see lib/task/export.rake
#edit according to your table name 
#run this 
#rake export:seeds_format
#or you can direct added to your seed.rb file with this command
#rake export:seeds_format > db/seeds.rb
#+++++++++++++++++
#or you can use gem which is more effective
#seed_dump
#rake db:seed:dump APPEND=TRUE
#Use another output file instead of db/seeds.rb:
#rake db:seed:dump FILE=db/seeds/users.rb
#better you see the documentation