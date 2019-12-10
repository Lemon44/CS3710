class Car < ApplicationRecord
  belongs_to :make
  has_many :car_parts
  has_many :parts, through: :car_parts

  validates :vin, length: { is: 5 }
  validates :vin, presence: true, uniqueness: true
  

  
end
