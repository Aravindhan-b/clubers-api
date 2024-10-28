class Drink < ApplicationRecord
  belongs_to :drink_category
  validates :name, :ingredients, presence: true

  has_many :club_drinks
  has_many :clubs, through: :club_drinks
end
