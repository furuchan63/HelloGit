class Post < ApplicationRecord
  validates :content, {presence: true, length: {maximum: 2000}}
  validates :title, {presence: true, length: {maximum: 50}}
  validates :user_id, {presence: true}

  def user
   return User.find_by(id: self.user_id)
  end



end
