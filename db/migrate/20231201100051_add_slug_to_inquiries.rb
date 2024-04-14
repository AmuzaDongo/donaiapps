class AddSlugToInquiries < ActiveRecord::Migration[7.0]
  def change
    add_column :inquiries, :slug, :string
    add_index :inquiries, :slug, unique: true
  end
end
