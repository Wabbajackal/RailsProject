class Specialty < ApplicationRecord
  belongs_to :hunter
  belongs_to :specie
end
