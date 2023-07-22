class PostsController < ApplicationController
    def index
        posts = Post.all
        render json: posts
   end

    def show 
        post = find_post
        render json: post
    end 

    def create 
        post = Post.create(post_params)
        render json: post, status: :created
    end

    def update
        post = find_post
        if item
            post.update(post_params)
           render json: post
        else
           render json: {error: "Post not found"}, status: :not_found
        end
    end
   
     def destroy
        post = find_menupost
        post.destroy
        head :no_content
     end 

    private 
    def find_post
        Post.find(params[:id])
    end

    def post_params
        params.permit(:title, :body)
    end 
end
