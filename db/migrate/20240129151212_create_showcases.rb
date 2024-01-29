class CreateShowcases < ActiveRecord::Migration[7.0]
  def change
    create_table :showcases do |t|
      t.string :caption
      t.text :domain
      t.integer :status, default: 0

      t.timestamps
    end
  end
end
