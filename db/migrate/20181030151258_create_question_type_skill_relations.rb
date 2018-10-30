class CreateQuestionTypeSkillRelations < ActiveRecord::Migration[5.2]
  def change
    create_table :question_type_skill_relations do |t|
      t.references :question_type, foreign_key: true
      t.references :skill, foreign_key: true

      t.timestamps
    end
  end
end
