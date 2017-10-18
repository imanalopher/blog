class Article < ApplicationRecord
  validates :title, presence: true, length: { minimum: 5 }
  has_many :comments, dependent: :destroy
  has_attached_file :avatar, styles: { medium: "150x150#", thumb: "100x100#" }, default_url: "https://i.imgur.com/fQxyVd5.jpg"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
end
