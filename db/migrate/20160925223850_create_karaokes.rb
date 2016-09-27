class CreateKaraokes < ActiveRecord::Migration
  def change
    create_table :karaokes do |t|
      t.datetime :date
      t.integer :score
      t.references :user, index: true, foreign_key: true
      t.references :song, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
