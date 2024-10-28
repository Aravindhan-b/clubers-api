class Food < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  has_many :club_foods
  has_many :clubs, through: :club_foods
end
