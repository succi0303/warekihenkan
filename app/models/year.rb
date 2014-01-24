class Year < ActiveRecord::Base
  validates :christian_era,
    presence: true,
    numericality: { only_integer: true, greater_than: 0 }
  validates :name_of_era, presence: true
  validates :year_of_the_era, 
    presence: true,
    numericality: { only_integer: true, greater_than: 0 }
end
