class Make < ApplicationRecord
    has_many :cars

    validates :make, length: { minimum: 2, maximum: 20 }
    validates :model, length: { minimum: 2, maximum: 20 }
    validates :year, length: { maximum: 4 }
    
    # validates :name, :model, :year, presence: true

end
