class Seminar < ApplicationRecord
    validates :name, presence: true
    validates :date, presence: true
    validates :start_time, presence: true
    validates :end_time, presence: true
    validates :price, presence: true,numericality: { only_integer: true }
    validates :cost, presence: true,numericality: { only_integer: true }

 has_one :seminar_room
end
