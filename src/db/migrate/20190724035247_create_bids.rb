class CreateBids < ActiveRecord::Migration[5.2]
  def change
    create_table :bids do |t|
      t.references :job, foreign_key: true
      t.integer :bartender_id
      t.float :amount
      t.boolean :approved

      t.timestamps
    end
  end
end
