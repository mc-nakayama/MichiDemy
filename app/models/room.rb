class Room < ApplicationRecord
    validates :name, presence: true
    validates :url, presence: true
    validates :address, presence: true
    validates :tel,numericality: { only_integer: true },allow_blank: true,length: {in: 10..11}
    validates :capacity, numericality: { only_integer: true }
    validates :cost, presence: true,numericality: { only_integer: true }
end
