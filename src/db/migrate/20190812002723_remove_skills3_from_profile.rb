class RemoveSkills3FromProfile < ActiveRecord::Migration[5.2]
  def change
    remove_column :profiles, :skills3, :string
  end
end
