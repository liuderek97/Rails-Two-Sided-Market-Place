class RemoveTypeFromProfile < ActiveRecord::Migration[5.2]
  def change
    remove_column :profiles, :type, :boolean
  end
end
