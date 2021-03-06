class Paper < ApplicationRecord

  validates :title, presence: true
  validates :year, presence: true, numericality: true
  validates :venue, presence: true

  has_and_belongs_to_many :authors

  scope :published_in, ->(time) { where("year==?", time) }
end
