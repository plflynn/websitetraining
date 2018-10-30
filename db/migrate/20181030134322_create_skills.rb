class CreateSkills < ActiveRecord::Migration[5.2]
  def change
    create_table :skills do |t|
      t.string :title
      t.integer :base_exp
      t.integer :master_exp

      t.timestamps
    end
  end
end
