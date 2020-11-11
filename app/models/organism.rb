class Organism < ApplicationRecord

    has_many :favorites
    has_many :users, through: :favorites

    validates :tag, numericality: { only_integer: true }
    validates :tag, uniqueness: true
end
