class CreateComents < ActiveRecord::Migration
  def change
    create_table :coments do |t|
      t.string :name
      t.string :description
      t.references :user, index: true, foreign_key: true
      t.references :livingroom, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
