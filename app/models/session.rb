class Session < ApplicationRecord
  belongs_to :lesson
  has_many :session_skill_relations, dependent: :destroy
  has_many :skills, through: :session_skill_relations
end
