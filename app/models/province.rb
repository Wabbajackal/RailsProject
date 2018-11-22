class Province < ApplicationRecord
  validates :name, :tax, presence: true, allow_blank: false
  validates :tax, numericality: { only_integer: true }
end
