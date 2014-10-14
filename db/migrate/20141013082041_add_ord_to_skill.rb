class AddOrdToSkill < ActiveRecord::Migration
  def change
    add_column :skills, :ord, :integer
  end
end
