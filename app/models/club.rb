class Club < ApplicationRecord
  validates :name, presence: true, uniqueness: { scope: :city }
  validates :owner_name, :address, :city, :near_by_landmark, :stag_entry, :couple_entry, :ladies_entry,
            :price_per_person, :contact_number, :discount, :opening_time, :closing_time, presence: true

  has_many :signature_dishes
  has_many :signature_drinks
  has_many :occations

  belongs_to :club_category

  has_many :club_foods
  has_many :foods, through: :club_foods

  has_many :club_drinks
  has_many :drinks, through: :club_drinks
end
