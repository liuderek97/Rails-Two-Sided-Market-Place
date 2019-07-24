class CreateProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :profiles do |t|
      t.string :name
      t.string :bio
      t.boolean :type
      t.integer :abn
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
