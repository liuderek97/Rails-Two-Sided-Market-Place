class AddBartenderToProfiles < ActiveRecord::Migration[5.2]
  def change
    add_column :profiles, :bartender, :boolean
  end
end
