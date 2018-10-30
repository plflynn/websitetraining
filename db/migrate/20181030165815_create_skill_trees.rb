class CreateSkillTrees < ActiveRecord::Migration[5.2]
  def change
    create_table :skill_trees do |t|
      t.bigint :parent_skill_id
      t.bigint :child_skill_id

      t.timestamps
    end
  end
end
