class User < ApplicationRecord
    has_secure_password
    has_many :followers
    validates :email, uniqueness: true, presence: true, on: :account_setup
    validates :user_name, uniqueness: true, presence: true
end
