class Location < ApplicationRecord
  validates :name, :type, presence: true
end
