class Car < ApplicationRecord
  belongs_to :make

  has_many :parts, through: :cars_parts

  validates :vin, length: { is: 5 }
  validates :vin, presence: true, uniqueness: true
  

  
end
