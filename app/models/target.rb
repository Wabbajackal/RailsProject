class Target < ApplicationRecord
  belongs_to :specie

  validates :specie, :description, presence: true, allow_blank: false
end
