class Occation < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  belongs_to :clubs
end
