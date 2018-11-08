class Specie < ApplicationRecord
  has_many :specialties, dependent: :destroy
  has_many :hunters, through: :specialties

  validates :name, :specie_type, presence: true, allow_blank: false
  validates :name, uniqueness: true
end
