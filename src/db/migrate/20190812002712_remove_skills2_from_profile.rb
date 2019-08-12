class RemoveSkills2FromProfile < ActiveRecord::Migration[5.2]
  def change
    remove_column :profiles, :skills2, :string
  end
end
