class CreateAlbums < ActiveRecord::Migration[5.2]
  def change
    create_table :albums do |t|
      t.string :album_title
      t.integer :year
      t.references :artist, foreign_key: true
      t.references :song, foreign_key: true

      t.timestamps
    end
  end
end
