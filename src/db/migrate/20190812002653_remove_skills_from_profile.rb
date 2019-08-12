class RemoveSkillsFromProfile < ActiveRecord::Migration[5.2]
  def change
    remove_column :profiles, :skills1, :string
    remove_column :profiles, :skills2, :string
    remove_column :profiles, :skills3, :string
  end
end
