class Part < ApplicationRecord
# has_many :cars_parts

  has_many :cars, through: :cars_parts

  
  validates :name, length: { minimum: 2, maximum: 50 }
  validates :name, presence: true
end
