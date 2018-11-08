class Hunter < ApplicationRecord
  belongs_to :specie
  has_many :specialties
  has_many :species, through :specialties

  validates :name, :specie, :description, :cost, presence: true, allow_blank: false
  validates :cost, numericality: true
end
