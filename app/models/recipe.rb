class Recipe < ApplicationRecord

    has_many :ingredients
    has_many :steps
    validates :title, presence: true
    validates :description, presence: true, length: { minimum:10 }
end
