class ClubFood < ApplicationRecord
  belongs_to :club
  belongs_to :food

  validates :price, presence: true
end
