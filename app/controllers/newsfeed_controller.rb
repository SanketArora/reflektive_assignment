class NewsfeedController < ApplicationController

  def index
    post_fetcher = PostFetcher.new(params[:page_no])
    render json: post_fetcher.fetch
  end
end
