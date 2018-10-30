class Skill < ApplicationRecord
  has_many :question_types
  has_many :sessions
  has_many :users
end
