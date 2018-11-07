class Paper < ApplicationRecord

  validates :title, presence: true
  validates :year, presence: true
  validates :venue, presence: true
end
