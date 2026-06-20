class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  validates :name, presence: true, length: {in: 5..20}

  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :validatable

  has_many :posts
end
