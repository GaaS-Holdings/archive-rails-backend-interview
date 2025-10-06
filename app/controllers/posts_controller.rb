class PostsController < AuthenticatedController
  def index
    posts = current_shop.posts
    render json: posts
  end
end
