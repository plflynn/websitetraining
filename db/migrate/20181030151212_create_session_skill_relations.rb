class CreateSessionSkillRelations < ActiveRecord::Migration[5.2]
  def change
    create_table :session_skill_relations do |t|
      t.references :session, foreign_key: true
      t.references :skill, foreign_key: true

      t.timestamps
    end
  end
end
