class Unit < ApplicationRecord
  belongs_to :course
  has_many :chapters, dependent: :destroy
end
