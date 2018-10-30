class Skill < ApplicationRecord
  has_many :user_skill_relations, dependent: :destroy
  has_many :session_skill_relations, dependent: :destroy
  has_many :question_type_skill_relations, dependent: :destroy

  has_many :users, through: :user_skill_relations
  has_many :sessions, through: :session_skill_relations
  has_many :question_types, through: :question_type_skill_relations

  has_many :child_skill_trees, :class_name => "SkillTree", :foreign_key => :parent_skill_id, dependent: :destroy
  has_many :parent_skill_trees, :class_name => "SkillTree", :foreign_key => :child_skill_id, dependent: :destroy
  has_many :child_skills, :class_name => "Skill", through: :child_skill_trees
  has_many :parent_skills, :class_name => "Skill", through: :parent_skill_trees
end
