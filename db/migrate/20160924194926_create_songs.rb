class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.string :name
      t.string :description
      t.references :artist, index: true, foreign_key: true
      t.references :language, index: true, foreign_key: true
      t.references :gender, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
