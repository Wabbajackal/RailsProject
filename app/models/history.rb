class History < ApplicationRecord
  belongs_to :schedule
  validates :schedule, :hunter_cost, :vehicle_cost, :tax, :total_cost, presence: true, allow_blank: false
  validates :hunter_cost, :vehicle_cost, :tax, :total_cost, numericality: true
  validates :schedule, uniqueness: true
end
