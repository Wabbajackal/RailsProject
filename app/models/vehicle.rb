class Vehicle < ApplicationRecord
  validates :name, :vehicle_type, :cost, presence: true, allow_blank: false
  validates :cost, numericality: true
  validates :name, uniqueness: true
end
