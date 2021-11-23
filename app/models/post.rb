class Post < ApplicationRecord
  validates :title, :content, presence: true
  belongs_to :Blog
  belongs_to :User
  has_many :messages
  has_many :users, through: :messages
end
