class Hunter < ApplicationRecord
  has_many :specialties, dependent: :destroy
  has_many :specie, through: :specialties

  mount_uploader :image, ImageUploader

  validates :name, :description, :cost, presence: true, allow_blank: false
  validates :cost, numericality: true
  validates :name, uniqueness: true
end
