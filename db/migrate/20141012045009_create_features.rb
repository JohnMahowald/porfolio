class CreateFeatures < ActiveRecord::Migration
  def change
    create_table :features do |t|
      t.string :description, null: false
      t.integer :project_id
            
      t.timestamps
    end
  end
end
