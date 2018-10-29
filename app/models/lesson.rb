class Lesson < ApplicationRecord
  belongs_to :chapter
  has_many :sessions
end
