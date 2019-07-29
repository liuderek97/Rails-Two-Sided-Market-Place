class AddDetailsToBids < ActiveRecord::Migration[5.2]
  def change
    add_column :bids, :content, :string
  end
end
