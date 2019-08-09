class AddSkills2ToProfile < ActiveRecord::Migration[5.2]
  def change
    add_column :profiles, :skills2, :string
  end
end
