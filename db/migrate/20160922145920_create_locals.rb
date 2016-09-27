class CreateLocals < ActiveRecord::Migration
  def change
    create_table :locals do |t|
      t.string :name
      t.string :description
      t.boolean :state
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
