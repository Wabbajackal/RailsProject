class Vehicle < ApplicationRecord
  validates :name, :type, :cost, presence: true, allow_blank: false
  validates :cost, numericality: true
end
