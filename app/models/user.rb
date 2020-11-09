class User < ApplicationRecord

    has_many :favorites
    has_many :organisms, through: :favorites

    validates :name, presence: true
end
