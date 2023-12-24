class AddSlugToTestmonials < ActiveRecord::Migration[7.0]
  def change
    add_column :testmonials, :slug, :string
    add_index :testmonials, :slug, unique: true
  end
end
