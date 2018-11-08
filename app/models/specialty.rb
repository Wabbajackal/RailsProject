class Specialty < ApplicationRecord
  belongs_to :hunter
  belongs_to :specie

  validates :modifier, presence: true
  validates :modifier, numericality: true
end
