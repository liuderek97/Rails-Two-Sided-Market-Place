class RemoveUrgencyFromJob < ActiveRecord::Migration[5.2]
  def change
    remove_column :jobs, :urgency, :string
  end
end
