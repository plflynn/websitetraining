class SessionSkillRelation < ApplicationRecord
  belongs_to :session
  belongs_to :skill
end
