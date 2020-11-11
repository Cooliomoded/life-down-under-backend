class User < ApplicationRecord

    has_many :favorites
    has_many :organisms, through: :favorites

    # has_secure_password
    validates :username, presence: true
    validates :username, uniqueness: true
    validates :username, length: {minimum: 2}

    # def password=(value)
    #     password_digest = value
    # end
end
