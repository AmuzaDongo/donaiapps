class CreateEpisodes < ActiveRecord::Migration[7.0]
  def change
    create_table :episodes do |t|
      t.string :title
      t.string :youtube_id
      t.integer :status, default: 0
      t.text :description
      t.references :service, null: false, foreign_key: true

      t.timestamps
    end
  end
end
