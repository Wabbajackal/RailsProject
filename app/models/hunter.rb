class Hunter < ApplicationRecord
  has_many :specialties, dependent: :destroy
  has_many :species, through: :specialties

  validates :name, :description, :cost, presence: true, allow_blank: false
  validates :cost, numericality: true
  validates :name, uniqueness: true
end
