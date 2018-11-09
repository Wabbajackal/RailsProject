class Target < ApplicationRecord
  belongs_to :specie

  mount_uploader :image, ImageUploader

  validates :specie, :description, presence: true, allow_blank: false
  validates :name, uniqueness: true
end
