class Car < ApplicationRecord
  belongs_to :make
  validates :make, presence: true

  has_many :cars_parts
  has_many :parts, through: :cars_parts

  validates :vin, length: { is: 17 }
  validates :vin, presence: true, uniqueness: true
  

  
end
