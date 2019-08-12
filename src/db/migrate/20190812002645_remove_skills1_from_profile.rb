class RemoveSkills1FromProfile < ActiveRecord::Migration[5.2]
  def change
    remove_column :profiles, :skills1, :string
  end
end
