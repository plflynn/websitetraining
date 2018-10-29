class Chapter < ApplicationRecord
  belongs_to :unit
  has_many :lessons, dependent: :destroy
end
