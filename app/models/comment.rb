class Comment < ApplicationRecord

  belongs_to :user
  belongs_to :post

  def newsfeed_json
    {
      type: self.class.to_s,
      content: content,
      user: user.newsfeed_json
    }
  end
end
