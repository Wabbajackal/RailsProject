class Schedule < ApplicationRecord
  belongs_to :hunter
  belongs_to :vehicle
  belongs_to :target
  belongs_to :location

  validates :hunter, :vehicle, :target, :location, :total_cost, :start_date, :end_date, presence: true, allow_blank: false
  validates :total_cost, numericality: true
end
