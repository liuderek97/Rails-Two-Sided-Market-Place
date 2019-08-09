class AddSkills1ToProfile < ActiveRecord::Migration[5.2]
  def change
    add_column :profiles, :skills1, :string
  end
end
