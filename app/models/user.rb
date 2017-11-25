class User < ApplicationRecord
  has_many :posts
  has_many :comments

  def newsfeed_json
    {
      type: self.class.to_s,
      name: name
    }
  end
end
