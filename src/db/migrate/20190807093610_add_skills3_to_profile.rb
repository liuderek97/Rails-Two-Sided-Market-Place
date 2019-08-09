class AddSkills3ToProfile < ActiveRecord::Migration[5.2]
  def change
    add_column :profiles, :skills3, :string
  end
end
