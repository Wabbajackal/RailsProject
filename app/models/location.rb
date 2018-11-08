class Location < ApplicationRecord
  validates :name, :location_type, presence: true
  validates :name, uniqueness: true
end
