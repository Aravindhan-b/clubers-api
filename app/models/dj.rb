class Dj < ApplicationRecord
  validates :name, :contact_number, :address, :availablity_hour, :availablity_days, presence: true

  belongs_to :clubs, class_name: 'Club', foreign_key: 'resident_dj_id'
end
