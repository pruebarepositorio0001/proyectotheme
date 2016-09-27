class CreateLivingrooms < ActiveRecord::Migration
  def change
    create_table :livingrooms do |t|
      t.string :name
      t.integer :capacity
      t.boolean :state
      t.references :local, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
