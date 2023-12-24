class CreateInquiries < ActiveRecord::Migration[7.0]
  def change
    create_table :inquiries do |t|
      t.string :company_name
      t.string :contact_name
      t.string :email
      t.string :phone
      t.string :company_size
      t.string :industry
      t.references :services, null: false, foreign_key: true
      t.string :budget
      t.string :country
      t.string :city
      t.string :address
      t.text :about
      t.integer :status, default: 0

      t.timestamps
    end
  end
end
