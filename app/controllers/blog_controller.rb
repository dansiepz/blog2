class BlogController < ApplicationController
  def index
  	@posts = Post.active
  end
end
