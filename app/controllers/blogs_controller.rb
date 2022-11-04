class BlogsController < ApplicationController

  def index
    @blogs = Blog.all
  end

  def new
    @blog = Blog.new
  end

  def create
    @blog = Blog.new(post_params)
    @blog.user_id = current_user.id
    @blog.save
    redirect_to '/blogs'
  end

  private
    def post_params #ストロングパラメータ
      params.require(:blog).permit(:title, :body)
    end
end
