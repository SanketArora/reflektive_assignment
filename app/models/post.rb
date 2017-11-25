class Post < ApplicationRecord
  belongs_to :user
  has_many :comments

  def newsfeed_json
    {
      type: self.class.to_s,
      content: content,
      user: user.newsfeed_json
    }
  end
end
