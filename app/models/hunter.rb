class Hunter < ApplicationRecord
  belongs_to :specie
  has_many :specialties
  has_many :species, through :specialties
end
