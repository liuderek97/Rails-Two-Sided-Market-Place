class CreateJobs < ActiveRecord::Migration[5.2]
  def change
    create_table :jobs do |t|
      t.string :title
      t.float :amount
      t.text :content
      t.string :urgency
      t.string :address
      t.integer :employer_id

      t.timestamps
    end
  end
end
