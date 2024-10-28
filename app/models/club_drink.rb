class ClubDrink < ApplicationRecord
  belongs_to :club
  belongs_to :drink

  validates :price, presence: true
end
