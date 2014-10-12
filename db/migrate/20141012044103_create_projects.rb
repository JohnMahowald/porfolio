class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :title, null: false
      t.string :github_url, null: false
      t.string :description, null: false
      t.string :demo_url
      
      t.timestamps
    end
  end
end
