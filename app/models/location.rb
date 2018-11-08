class Location < ApplicationRecord
  validates :name, :type, presence: true
  validates :name, uniqueness: true
end
