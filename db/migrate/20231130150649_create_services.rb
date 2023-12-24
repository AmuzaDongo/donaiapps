class CreateServices < ActiveRecord::Migration[7.0]
  def change
    create_table :services do |t|
      t.string :title
      t.integer :status, default: 0

      t.timestamps
    end
  end
end
