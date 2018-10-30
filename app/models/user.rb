class User < ApplicationRecord
  has_many :user_skill_relations, dependent: :destroy
  has_many :skills, through: :user_skill_relations
end
