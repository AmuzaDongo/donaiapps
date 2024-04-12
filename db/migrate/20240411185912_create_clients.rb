class CreateClients < ActiveRecord::Migration[7.0]
  def change
    create_table :clients do |t|
      t.string :name
      t.string :person
      t.string :project
      t.text :description
      t.string :email
      t.string :phone
      t.integer :company_size
      t.string :industy
      t.references :service, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.string :country
      t.string :city
      t.string :address
      t.boolean :is_active
      t.decimal :amout, precision: 10, scale: 2
      t.integer :status, default: 0

      t.timestamps
    end
  end
end
