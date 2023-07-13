class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  enum genre: { client: 0, admin: 1 }

  has_many :orders
  has_one :profile
  has_many :posts
  has_many :comments
end
