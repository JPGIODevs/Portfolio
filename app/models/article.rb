class Article < ApplicationRecord
  include Visible

  has_one_attached :cover_image
  has_rich_text :content

  has_many :comments, dependent: :destroy

  validates :title, presence: true
  validates :header, presence: true
  validates :content, presence: true, length: { minimum: 10 }
end
