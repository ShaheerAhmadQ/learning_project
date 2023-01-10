class SearchController < ApplicationController
  def index
    search_input = params[:search].present? ? params[:search] : '*'

    @posts = Post.search(search_input, fields: Post::ALL_COLUMNS)

    respond_to do |format|
      format.html { render :index }
      format.turbo_stream do
        render turbo_stream:
          turbo_stream.update('posts',
                              partial: 'posts/posts',
                              locals: { posts: @posts })
      end
    end
  end
end
