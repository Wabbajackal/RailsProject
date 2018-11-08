class Specie < ApplicationRecord
  has_many :specialties
  has_many :hunters, through :specialties
end
