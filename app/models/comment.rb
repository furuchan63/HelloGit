class Comment < ApplicationRecord
  belongs_to :posts
  validates :content, {presence: true}

  def user
   return User.find_by(id: self.user_id)
  end
end
