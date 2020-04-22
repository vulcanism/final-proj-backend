class Sighting < ApplicationRecord
    belongs_to :cryptid

    validates :date, presence: true
    validates :location, presence: true
end
