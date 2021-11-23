class User < ApplicationRecord
    validates :first_name, :last_name, :email_address, presence: true
    has_many :owners
    has_many :posts
    has_many :messages
    has_many :blogs, through: :owners
    has_many :blogs, through: :posts
    has_many :posts, through: :messages
end
 