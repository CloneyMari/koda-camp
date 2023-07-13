class Post < ApplicationRecord
  default_scope { where(deleted_at: nil) }

  validates :title, presence: true
  validates :content, presence: true

  has_many :comments
  has_many :post_category_ships
  has_many :categories, through: :post_category_ships
  belongs_to :user
  mount_uploader :image, ImageUploader

  has_many :posts
  has_many :post_mood_ships
  has_many :posts, through: :post_mood_ships
  def destroy
  update(deleted_at: Time.now)
  end
end