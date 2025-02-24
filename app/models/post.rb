class Post < ApplicationRecord
  validates :title, presence: true, length: { minimum: 5, maximum: 50 }
  validates :body, presence: true, length: { minimum: 10, maximum: 100 }
  belongs_to :user
  # after_create :oncreate

  # def oncreate
  #   Post.destroy
  # end
end
