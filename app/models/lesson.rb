class Lesson < ApplicationRecord
  belongs_to :chapter
  has_many :sessions, dependent: :destroy
end
