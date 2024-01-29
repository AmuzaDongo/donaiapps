class AddSlugToShowcase < ActiveRecord::Migration[7.0]
  def change
    add_column :showcases, :slug, :string
    add_index :showcases, :slug, unique: true
  end
end
