class Part < ApplicationRecord
    has_many :car_parts
    has_many :cars, through: :car_parts
  
  validates :name, length: { minimum: 2, maximum: 50 }
  validates :name, presence: true
end
