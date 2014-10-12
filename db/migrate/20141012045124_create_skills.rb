class CreateSkills < ActiveRecord::Migration
  def change
    create_table :skills do |t|
      t.string :title, null: false
      t.integer :project_id
      
      t.timestamps
    end
  end
end
