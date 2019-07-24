class RemoveAbnFromProfile < ActiveRecord::Migration[5.2]
  def change
    remove_column :profiles, :abn, :integer
  end
end
