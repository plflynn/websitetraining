class Session < ApplicationRecord
  belongs_to :lesson
  has_many :skills
end
