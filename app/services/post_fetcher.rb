class PostFetcher

  DEFAULT_PAGE_SIZE = 50
  attr_reader :page_no, :page_size, :posts

  def initialize(page_no, page_size=DEFAULT_PAGE_SIZE)
    @page_no = page_no.to_i || 0
    @page_size = page_size
  end

  def fetch
    load_records
    format_records
  end

  def load_records
    @posts = query_posts
  end

  def query_posts
    Post.includes(:user, comments: [:user])
         .order(created_at: :desc)
         .limit(page_size)
         .offset(page_no * page_size)
  end

  def format_records
    posts.map do |post|
      post.newsfeed_json.merge(
        comments: post.comments.map(&:newsfeed_json)
      )
    end
  end

end
