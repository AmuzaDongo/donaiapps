class CreateTestmonials < ActiveRecord::Migration[7.0]
  def change
    create_table :testmonials do |t|
      t.string :name
      t.string :title
      t.string :company
      t.text :testmony
      t.integer :status, default: 0
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
