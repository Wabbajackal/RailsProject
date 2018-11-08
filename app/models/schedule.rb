class Schedule < ApplicationRecord
  belongs_to :hunter
  belongs_to :vehicle
  belongs_to :target
  belongs_to :location
end
