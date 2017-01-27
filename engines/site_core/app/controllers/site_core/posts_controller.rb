require_dependency 'site_core/application_controller'

module SiteCore
  class PostsController < ApplicationController 
    before_action :set_post, only: [:edit, :update, :destroy]

    def index
      @posts = current_account.posts
    end

    def new
      @post = current_account.posts.new
    end

    def create
      @post = current_account.posts.new(set_params)
      
      if @post.save
        flash[:success] = t :success
        redirect_to action: :index
      else
        render action: :new
      end
    end

    def edit
    end

    def update

      if @post.update(set_params)
        flash[:success] = t :success
        redirect_to action: :index
      else
        render action: :new
      end

    end

    def destroy

      if @post.destroy
        flash[:success] =  t :success
      else 
        flash[:danger] =  t :danger
      end

      redirect_to action: :index
    end

    private

    def set_params
      params.require(:post).permit(:name, :content, :publish, :slider, :slider_image)
    end

    def set_post
      @post = current_account.posts.find(params[:id])
    end

  end
end