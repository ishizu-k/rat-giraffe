class Rent < ApplicationRecord
  has_many :stations
  accepts_nested_attributes_for :stations
  validates :property_name, presence: true, length: { in: 1..50 }
  validates :fee, presence: true, numericality: { greater_than_or_equal_to: 1 }
  validates :address, presence: true
  validates :age, presence: true, numericality: true
  validates :note, length: { maximum: 200 }
end
