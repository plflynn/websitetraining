class Chapter < ApplicationRecord
  belongs_to :unit
  has_many :lessons
end
