class SkillTree < ApplicationRecord
  belongs_to :parent_skill, :class_name => "Skill"
  belongs_to :child_skill, :class_name => "Skill"
end
