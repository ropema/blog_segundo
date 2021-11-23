class Message < ApplicationRecord
  validates :author, :message, presence: true
  belongs_to :Post
  belongs_to :User
end
