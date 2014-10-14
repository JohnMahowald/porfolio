class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :data, null: false
      t.string :icon_url, null: false
      
      t.timestamps
    end
    add_index :contacts, :data
  end
end
