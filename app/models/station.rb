class Station < ApplicationRecord
  belongs_to :rent, optional: true
  validates :line_name, length: { maximum: 20 }
  validates :station_name, length: { maximum: 20 }
  validates :walk, numericality: true, allow_blank: true
end
