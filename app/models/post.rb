class Post < ApplicationRecord
  validates :title, presence: true, length: {in: 10..80}
  validates :content, presence: true, length: {in: 30..500}

  belongs_to :user
end
