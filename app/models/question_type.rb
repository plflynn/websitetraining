class QuestionType < ApplicationRecord
  has_many :question_type_skill_relations, dependent: :destroy
  has_many :skills, through: :question_type_skill_relations
end
