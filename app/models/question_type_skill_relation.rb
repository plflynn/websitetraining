class QuestionTypeSkillRelation < ApplicationRecord
  belongs_to :question_type
  belongs_to :skill
end
