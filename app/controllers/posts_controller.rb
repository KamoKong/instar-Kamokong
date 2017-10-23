class PostsController < ApplicationController
    
    def index
      @posts = Post.all
        
    end
    
    def new
        
    end
    
    def create
      post = Post.new #view에 나올게 아니기 때문에 그냥 post에 저장
      post.content = params[:content]
      post.save
      
      redirect_to "/posts/#{post.id}"  # 여기서 쓰인 #{내용}은 HTML에서의 <% %>과 같다!
    end
    
    def show
      @post = Post.find(params[:id])
    end
    
    def edit
      @post = Post.find(params[:id])
    end
    
    def update
      post = Post.find(params[:id])
      post.content = params[:content]
      post.save
      
      redirect_to "/posts/#{post.id}"
    end
    
    def destroy
        
    end
    
    
end
